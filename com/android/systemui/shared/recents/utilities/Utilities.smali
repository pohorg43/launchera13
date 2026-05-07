.class public Lcom/android/systemui/shared/recents/utilities/Utilities;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TABLET_MIN_DPS:F = 600.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBackDispositionHints(IIZZ)I
    .registers 6

    const/4 v0, 0x2

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    if-eq p1, v0, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_c

    goto :goto_13

    :cond_c
    and-int/lit8 p0, p0, -0x2

    goto :goto_13

    :cond_f
    if-eqz p2, :cond_c

    or-int/lit8 p0, p0, 0x1

    :goto_13
    if-eqz p2, :cond_17

    or-int/2addr p0, v0

    goto :goto_19

    :cond_17
    and-int/lit8 p0, p0, -0x3

    :goto_19
    if-eqz p3, :cond_1e

    or-int/lit8 p0, p0, 0x4

    goto :goto_20

    :cond_1e
    and-int/lit8 p0, p0, -0x5

    :goto_20
    return p0
.end method

.method public static clamp(FFF)F
    .registers 3

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static computeContrastBetweenColors(II)F
    .registers 15

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    const v3, 0x3d20e411  # 0.03928f

    cmpg-float v4, v0, v3

    const v5, 0x414eb852  # 12.92f

    const-wide v6, 0x4003333340000000L  # 2.4000000953674316

    const v8, 0x3f870a3d  # 1.055f

    const v9, 0x3d6147ae  # 0.055f

    if-gez v4, :cond_2b

    div-float/2addr v0, v5

    goto :goto_33

    :cond_2b
    add-float/2addr v0, v9

    div-float/2addr v0, v8

    float-to-double v10, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v0, v10

    :goto_33
    cmpg-float v4, v2, v3

    if-gez v4, :cond_39

    div-float/2addr v2, v5

    goto :goto_41

    :cond_39
    add-float/2addr v2, v9

    div-float/2addr v2, v8

    float-to-double v10, v2

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v2, v10

    :goto_41
    cmpg-float v4, p0, v3

    if-gez v4, :cond_47

    div-float/2addr p0, v5

    goto :goto_4f

    :cond_47
    add-float/2addr p0, v9

    div-float/2addr p0, v8

    float-to-double v10, p0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float p0, v10

    :goto_4f
    const v4, 0x3e59b3d0  # 0.2126f

    mul-float/2addr v0, v4

    const v10, 0x3f371759  # 0.7152f

    mul-float/2addr v2, v10

    add-float/2addr v2, v0

    const v0, 0x3d93dd98  # 0.0722f

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    cmpg-float v1, v2, v3

    if-gez v1, :cond_75

    div-float/2addr v2, v5

    goto :goto_7d

    :cond_75
    add-float/2addr v2, v9

    div-float/2addr v2, v8

    float-to-double v1, v2

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v2, v1

    :goto_7d
    cmpg-float v1, v11, v3

    if-gez v1, :cond_83

    div-float/2addr v11, v5

    goto :goto_8b

    :cond_83
    add-float/2addr v11, v9

    div-float/2addr v11, v8

    float-to-double v11, v11

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    :goto_8b
    cmpg-float v1, p1, v3

    if-gez v1, :cond_91

    div-float/2addr p1, v5

    goto :goto_99

    :cond_91
    add-float/2addr p1, v9

    div-float/2addr p1, v8

    float-to-double v8, p1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float p1, v5

    :goto_99
    mul-float/2addr v2, v4

    mul-float/2addr v11, v10

    add-float/2addr v11, v2

    mul-float/2addr p1, v0

    add-float/2addr p1, v11

    const v0, 0x3d4ccccd  # 0.05f

    add-float/2addr p1, v0

    add-float/2addr p0, v0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static dpiFromPx(FI)F
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static isRotationAnimationCCW(II)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    if-ne p1, v1, :cond_7

    return v0

    :cond_7
    const/4 v2, 0x2

    if-nez p0, :cond_d

    if-ne p1, v2, :cond_d

    return v1

    :cond_d
    const/4 v3, 0x3

    if-nez p0, :cond_13

    if-ne p1, v3, :cond_13

    return v1

    :cond_13
    if-ne p0, v1, :cond_18

    if-nez p1, :cond_18

    return v1

    :cond_18
    if-ne p0, v1, :cond_1d

    if-ne p1, v2, :cond_1d

    return v0

    :cond_1d
    if-ne p0, v1, :cond_22

    if-ne p1, v3, :cond_22

    return v1

    :cond_22
    if-ne p0, v2, :cond_27

    if-nez p1, :cond_27

    return v1

    :cond_27
    if-ne p0, v2, :cond_2c

    if-ne p1, v1, :cond_2c

    return v1

    :cond_2c
    if-ne p0, v2, :cond_31

    if-ne p1, v3, :cond_31

    return v0

    :cond_31
    if-ne p0, v3, :cond_36

    if-nez p1, :cond_36

    return v0

    :cond_36
    if-ne p0, v3, :cond_3b

    if-ne p1, v1, :cond_3b

    return v1

    :cond_3b
    if-ne p0, v3, :cond_40

    if-ne p1, v2, :cond_40

    return v1

    :cond_40
    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dpiFromPx(FI)F

    move-result p0

    const/high16 v0, 0x44160000  # 600.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return p0
.end method

.method public static postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method
