.class Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/COUILocateOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUISplineOverScroller"
.end annotation


# static fields
.field public static final p:F

.field public static final q:[F

.field public static final r:[F


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:F

.field public n:I

.field public o:F


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    const-wide v0, 0x3fe8f5c28f5c28f6L  # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL  # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->p:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->q:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->r:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_24
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v2, v3, :cond_a5

    int-to-float v3, v2

    const/high16 v5, 0x42c80000  # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_30
    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v3, v0, v6, v0}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v7

    const/high16 v8, 0x40400000  # 3.0f

    mul-float v9, v7, v8

    sub-float v10, v4, v7

    mul-float/2addr v9, v10

    const v11, 0x3e333333  # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334  # 0.35000002f

    mul-float/2addr v13, v7

    add-float/2addr v13, v12

    mul-float/2addr v13, v9

    mul-float v12, v7, v7

    mul-float/2addr v12, v7

    add-float/2addr v13, v12

    sub-float v14, v13, v5

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_9d

    sget-object v3, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->q:[F

    const/high16 v14, 0x3f000000  # 0.5f

    mul-float/2addr v10, v14

    add-float/2addr v10, v7

    mul-float/2addr v10, v9

    add-float/2addr v10, v12

    aput v10, v3, v2

    move v3, v4

    :goto_67
    invoke-static {v3, v1, v6, v1}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v6

    mul-float/2addr v8, v6

    sub-float v7, v4, v6

    mul-float/2addr v8, v7

    mul-float v9, v7, v14

    add-float/2addr v9, v6

    mul-float/2addr v9, v8

    mul-float v10, v6, v6

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    sub-float v12, v9, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    cmpg-double v12, v12, v16

    if-gez v12, :cond_91

    sget-object v3, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->r:[F

    mul-float/2addr v7, v11

    const v4, 0x3eb33334  # 0.35000002f

    mul-float/2addr v6, v4

    add-float/2addr v6, v7

    mul-float/2addr v6, v8

    add-float/2addr v6, v10

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_91
    cmpl-float v7, v9, v5

    if-lez v7, :cond_97

    move v3, v6

    goto :goto_98

    :cond_97
    move v1, v6

    :goto_98
    const/high16 v6, 0x40000000  # 2.0f

    const/high16 v8, 0x40400000  # 3.0f

    goto :goto_67

    :cond_9d
    cmpl-float v6, v13, v5

    if-lez v6, :cond_a3

    move v3, v7

    goto :goto_30

    :cond_a3
    move v0, v7

    goto :goto_30

    :cond_a5
    sget-object v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->q:[F

    aput v4, v0, v3

    sget-object v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->r:[F

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/high16 v1, 0x40200000  # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000  # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d  # 0.84f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->o:F

    return-void
.end method

.method public static e(I)F
    .registers 1

    if-lez p0, :cond_5

    const/high16 p0, -0x3b060000  # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x44fa0000  # 2000.0f

    :goto_7
    return p0
.end method


# virtual methods
.method public final a(III)V
    .registers 7

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000  # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_2e

    if-lez p3, :cond_2e

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sget-object p2, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->r:[F

    aget p3, p2, p3

    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    invoke-static {p2, p3, p1, p3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    :cond_2e
    return-void
.end method

.method public b()Z
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    if-eq v0, v2, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto :goto_3f

    :cond_c
    iget-wide v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    iget v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l(II)V

    goto :goto_3f

    :cond_1c
    return v1

    :cond_1d
    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->i:I

    if-ge v0, v3, :cond_43

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    invoke-static {v0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h()V

    :goto_3f
    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m()Z

    return v2

    :cond_43
    return v1
.end method

.method public c()V
    .registers 2

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    return-void
.end method

.method public d(IIIII)V
    .registers 11

    iput p5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    int-to-float v0, p2

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    iput p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    iput p5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    iput p5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->i:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    if-gt p1, p4, :cond_62

    if-ge p1, p3, :cond_1d

    goto :goto_62

    :cond_1d
    iput p5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_41

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f(I)D

    move-result-wide v1

    sget p5, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->p:F

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr p5, v3

    float-to-double v3, p5

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L  # 1000.0

    mul-double/2addr v1, v3

    double-to-int p5, v1

    iput p5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    iput p5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->i:I

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g(I)D

    move-result-wide v1

    :cond_41
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->j:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    if-ge p1, p3, :cond_56

    iget p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a(III)V

    iput p3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    :cond_56
    iget p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    if-le p1, p4, :cond_61

    iget p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    invoke-virtual {p0, p2, p1, p4}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a(III)V

    iput p4, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    :cond_61
    return-void

    :cond_62
    :goto_62
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->j(IIII)V

    return-void
.end method

.method public final f(I)D
    .registers 3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333  # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m:F

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->o:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final g(I)D
    .registers 8

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f(I)D

    move-result-wide v0

    sget p1, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->p:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->m:F

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->o:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr p0, v4

    return-wide p0
.end method

.method public final h()V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_26

    neg-float v0, v3

    mul-float/2addr v0, v1

    int-to-float v1, v4

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    int-to-float v0, v4

    :cond_26
    float-to-int v1, v0

    iput v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    iget v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    iget v2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    if-lez v2, :cond_33

    goto :goto_34

    :cond_33
    neg-float v0, v0

    :goto_34
    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    const/high16 v0, 0x447a0000  # 1000.0f

    int-to-float v1, v2

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    return-void
.end method

.method public i(III)Z
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iput v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    if-ge p1, p2, :cond_1a

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l(II)V

    goto :goto_1f

    :cond_1a
    if-le p1, p3, :cond_1f

    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l(II)V

    :cond_1f
    :goto_1f
    iget-boolean p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method public final j(IIII)V
    .registers 15

    const/4 v0, 0x1

    if-le p1, p2, :cond_10

    if-ge p1, p3, :cond_10

    const-string p1, "COUILocateOverScroller"

    const-string/jumbo p2, "startAfterEdge called from a valid position"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    return-void

    :cond_10
    const/4 v1, 0x0

    if-le p1, p3, :cond_15

    move v2, v0

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    if-eqz v2, :cond_1a

    move v3, p3

    goto :goto_1b

    :cond_1a
    move v3, p2

    :goto_1b
    sub-int v4, p1, v3

    mul-int v5, v4, p4

    if-ltz v5, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    if-eqz v0, :cond_70

    if-nez p4, :cond_28

    goto :goto_29

    :cond_28
    move v4, p4

    :goto_29
    invoke-static {v4}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    neg-int p3, p4

    int-to-float p3, p3

    div-float/2addr p3, p2

    int-to-float p4, p4

    mul-float/2addr p4, p4

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p4, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p4, p2

    sub-int p1, v3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p4, p1

    float-to-double p1, p4

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double/2addr p1, v0

    iget p4, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-double v0, p4

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    sub-float p2, p1, p3

    const/high16 p3, 0x447a0000  # 1000.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    int-to-long p2, p2

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iput v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    iput v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    iget p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h()V

    goto :goto_93

    :cond_70
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g(I)D

    move-result-wide v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_90

    if-eqz v2, :cond_81

    move v7, p2

    goto :goto_82

    :cond_81
    move v7, p1

    :goto_82
    if-eqz v2, :cond_86

    move v8, p1

    goto :goto_87

    :cond_86
    move v8, p3

    :goto_87
    iget v9, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d(IIIII)V

    goto :goto_93

    :cond_90
    invoke-virtual {p0, p1, v3}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l(II)V

    :goto_93
    return-void
.end method

.method public k(III)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    iput p3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    return-void
.end method

.method public final l(II)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->k:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    iput p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->c:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    neg-int p2, p1

    iput p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    int-to-float p1, p1

    const/high16 p2, -0x40000000  # -2.0f

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L  # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    return-void
.end method

.method public m()Z
    .registers 10

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_15

    iget p0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    if-lez p0, :cond_14

    move v3, v4

    :cond_14
    return v3

    :cond_15
    iget v2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->h:I

    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_1d

    return v3

    :cond_1d
    const-wide/16 v5, 0x0

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->n:I

    const/high16 v7, 0x447a0000  # 1000.0f

    if-eqz v3, :cond_64

    const/high16 v8, 0x40000000  # 2.0f

    if-eq v3, v4, :cond_41

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2d

    goto :goto_98

    :cond_2d
    long-to-float v0, v0

    div-float/2addr v0, v7

    iget v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    int-to-float v2, v1

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->f:F

    mul-float v5, v3, v0

    add-float/2addr v5, v2

    iput v5, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v8

    add-float/2addr v3, v1

    float-to-double v5, v3

    goto :goto_98

    :cond_41
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    iget v2, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->d:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->l:I

    int-to-float v5, v3

    mul-float/2addr v5, v2

    const/high16 v6, 0x40400000  # 3.0f

    mul-float/2addr v6, v1

    mul-float/2addr v8, v0

    mul-float/2addr v8, v1

    sub-float/2addr v6, v8

    mul-float/2addr v6, v5

    float-to-double v5, v6

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000  # 6.0f

    mul-float/2addr v2, v3

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    goto :goto_98

    :cond_64
    long-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->i:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v3, v0, v2

    float-to-int v3, v3

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/16 v8, 0x64

    if-ge v3, v8, :cond_8b

    if-lez v3, :cond_8b

    int-to-float v5, v3

    div-float/2addr v5, v2

    add-int/lit8 v6, v3, 0x1

    int-to-float v8, v6

    div-float/2addr v8, v2

    sget-object v2, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->q:[F

    aget v3, v2, v3

    aget v2, v2, v6

    sub-float/2addr v2, v3

    sub-float/2addr v8, v5

    div-float v6, v2, v8

    invoke-static {v0, v5, v6, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v5

    :cond_8b
    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->j:I

    int-to-float v2, v0

    mul-float/2addr v5, v2

    float-to-double v2, v5

    int-to-float v0, v0

    mul-float/2addr v6, v0

    int-to-float v0, v1

    div-float/2addr v6, v0

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->e:F

    move-wide v5, v2

    :goto_98
    iget v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->a:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/scroll/COUILocateOverScroller$COUISplineOverScroller;->b:I

    return v4
.end method
