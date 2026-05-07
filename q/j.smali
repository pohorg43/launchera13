.class public final Lq/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/graphics/PathMeasure;

.field public static final b:Landroid/graphics/Path;

.field public static final c:Landroid/graphics/Path;

.field public static final d:[F

.field public static final e:F

.field public static f:F


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lq/j;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lq/j;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lq/j;->c:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lq/j;->d:[F

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lq/j;->e:F

    const/high16 v0, -0x40800000  # -1.0f

    sput v0, Lq/j;->f:F

    return-void
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .registers 12

    sget-object v0, Lq/j;->a:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v3, p1, v2

    const-string v4, "applyTrimPathIfNeeded"

    const/4 v5, 0x0

    if-nez v3, :cond_1b

    cmpl-float v3, p2, v5

    if-nez v3, :cond_1b

    invoke-static {v4}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void

    :cond_1b
    cmpg-float v3, v1, v2

    if-ltz v3, :cond_a1

    sub-float v3, p2, p1

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v6, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v2, v2, v6

    if-gez v2, :cond_31

    goto :goto_a1

    :cond_31
    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p3, v1

    add-float/2addr v2, p3

    add-float/2addr p1, p3

    cmpl-float p2, v2, v1

    if-ltz p2, :cond_50

    cmpl-float p2, p1, v1

    if-ltz p2, :cond_50

    invoke-static {v2, v1}, Lq/i;->d(FF)I

    move-result p2

    int-to-float v2, p2

    invoke-static {p1, v1}, Lq/i;->d(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_50
    cmpg-float p2, v2, v5

    if-gez p2, :cond_59

    invoke-static {v2, v1}, Lq/i;->d(FF)I

    move-result p2

    int-to-float v2, p2

    :cond_59
    cmpg-float p2, p1, v5

    if-gez p2, :cond_62

    invoke-static {p1, v1}, Lq/i;->d(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_62
    cmpl-float p2, v2, p1

    if-nez p2, :cond_6d

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    invoke-static {v4}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void

    :cond_6d
    if-ltz p2, :cond_70

    sub-float/2addr v2, v1

    :cond_70
    sget-object p2, Lq/j;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x1

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v3, p1, v1

    if-lez v3, :cond_8a

    sget-object v2, Lq/j;->c:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    rem-float/2addr p1, v1

    invoke-virtual {v0, v5, p1, v2, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {p2, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_9a

    :cond_8a
    cmpg-float p1, v2, v5

    if-gez p1, :cond_9a

    sget-object p1, Lq/j;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    add-float/2addr v2, v1

    invoke-virtual {v0, v2, v1, p1, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_9a
    :goto_9a
    invoke-virtual {p0, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-static {v4}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void

    :cond_a1
    :goto_a1
    invoke-static {v4}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public static b(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static c()F
    .registers 2

    sget v0, Lq/j;->f:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lq/j;->f:F

    :cond_14
    sget v0, Lq/j;->f:F

    return v0
.end method

.method public static d(Landroid/graphics/Matrix;)F
    .registers 7

    sget-object v0, Lq/j;->d:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    sget v2, Lq/j;->e:F

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v5, 0x3

    aput v2, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p0, v0, v4

    aget v1, v0, v1

    sub-float/2addr p0, v1

    aget v1, v0, v5

    aget v0, v0, v3

    sub-float/2addr v1, v0

    float-to-double v2, p0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static e(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_d

    return-object p0

    :cond_d
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method
