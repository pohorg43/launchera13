.class Lcom/android/launcher3/util/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final BASIC_COEFFICIENT:F = 19.6f

.field private static final BASIC_DIVISOR:F = 10.0f

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final FRICTION_COEFFICIENT:F = 12.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final SPRING:I = 0x3

.field private static final SPRING_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/launcher3/util/OverScroller$SplineOverScroller;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUseFrictionCoefficient:Z

.field private mVelocity:I


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

    sput v0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    new-instance v0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller$1;

    const-string/jumbo v1, "splineOverScrollerSpring"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPRING_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_2e
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v2, v3, :cond_af

    int-to-float v3, v2

    const/high16 v5, 0x42c80000  # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_3a
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

    if-gez v14, :cond_a7

    sget-object v3, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v14, 0x3f000000  # 0.5f

    mul-float/2addr v10, v14

    add-float/2addr v10, v7

    mul-float/2addr v10, v9

    add-float/2addr v10, v12

    aput v10, v3, v2

    move v3, v4

    :goto_71
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

    if-gez v12, :cond_9b

    sget-object v3, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    mul-float/2addr v7, v11

    const v4, 0x3eb33334  # 0.35000002f

    mul-float/2addr v6, v4

    add-float/2addr v6, v7

    mul-float/2addr v6, v8

    add-float/2addr v6, v10

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_9b
    cmpl-float v7, v9, v5

    if-lez v7, :cond_a1

    move v3, v6

    goto :goto_a2

    :cond_a1
    move v1, v6

    :goto_a2
    const/high16 v6, 0x40000000  # 2.0f

    const/high16 v8, 0x40400000  # 3.0f

    goto :goto_71

    :cond_a7
    cmpl-float v6, v13, v5

    if-lez v6, :cond_ad

    move v3, v7

    goto :goto_3a

    :cond_ad
    move v0, v7

    goto :goto_3a

    :cond_af
    sget-object v0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    iput-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

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

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->lambda$startScroll$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method public static synthetic access$700(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method public static synthetic access$702(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    return p1
.end method

.method private adjustDuration(III)V
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

    if-ge p3, v0, :cond_2c

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sget-object p2, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    invoke-static {p2, p3, p1, p3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    iget p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    :cond_2c
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 9

    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float/2addr p3, p3

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p3, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    mul-double/2addr v1, v3

    iget p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    iget-wide v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000  # 1000.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .registers 1

    if-lez p0, :cond_5

    const/high16 p0, -0x3b060000  # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x44fa0000  # 2000.0f

    :goto_7
    return p0
.end method

.method private getSplineDeceleration(I)D
    .registers 3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333  # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getSplineFlingDistance(I)D
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mUseFrictionCoefficient:Z

    if-eqz v0, :cond_f

    int-to-float p0, p1

    const/high16 p1, 0x41200000  # 10.0f

    div-float/2addr p0, p1

    mul-float/2addr p0, p0

    const p1, 0x436b3334  # 235.20001f

    div-float/2addr p0, p1

    float-to-double p0, p0

    return-wide p0

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget p1, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

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

.method private getSplineFlingDuration(I)I
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide p0

    sget v0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L  # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private synthetic lambda$startScroll$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->finish()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    return-void
.end method

.method private onEdgeReached()V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    iget v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_26

    neg-float v0, v3

    mul-float/2addr v0, v1

    int-to-float v1, v4

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    int-to-float v0, v4

    :cond_26
    float-to-int v1, v0

    iput v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mOver:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    iget v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iget v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v2, :cond_33

    goto :goto_34

    :cond_33
    neg-float v0, v0

    :goto_34
    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    const/high16 v0, 0x447a0000  # 1000.0f

    int-to-float v1, v2

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method private startAfterEdge(IIII)V
    .registers 15

    const/4 v0, 0x1

    if-le p1, p2, :cond_10

    if-ge p1, p3, :cond_10

    const-string p1, "OverScroller"

    const-string/jumbo p2, "startAfterEdge called from a valid position"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

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
    if-eqz v0, :cond_29

    invoke-direct {p0, p1, v3, p4}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_4c

    :cond_29
    invoke-direct {p0, p4}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_49

    if-eqz v2, :cond_3a

    move v7, p2

    goto :goto_3b

    :cond_3a
    move v7, p1

    :goto_3b
    if-eqz v2, :cond_3f

    move v8, p1

    goto :goto_40

    :cond_3f
    move v8, p3

    :goto_40
    iget v9, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_4c

    :cond_49
    invoke-direct {p0, p1, v3, p4}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_4c
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .registers 5

    if-nez p3, :cond_5

    sub-int v0, p1, p2

    goto :goto_6

    :cond_5
    move v0, p3

    :goto_6
    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    invoke-direct {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .registers 6

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mOver:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L  # -2.0

    mul-double/2addr p1, v0

    iget p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L  # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public continueWhenFinished()Z
    .registers 8

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    if-eq v0, v1, :cond_1c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_3f

    :cond_c
    iget-wide v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    iget v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v3, v2}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_3f

    :cond_1c
    return v2

    :cond_1d
    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    iget v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v3, :cond_43

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    iget-wide v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    invoke-direct {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->onEdgeReached()V

    :goto_3f
    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->update()Z

    return v1

    :cond_43
    return v2
.end method

.method public extendDuration(I)V
    .registers 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public finish()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_f
    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIII)V
    .registers 11

    iput p5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mOver:I

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iput p5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_50

    if-ge p1, p3, :cond_1d

    goto :goto_50

    :cond_1d
    iput p5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2f

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    :cond_2f
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    if-ge p1, p3, :cond_44

    iget p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, p2, p1, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    :cond_44
    iget p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    if-le p1, p4, :cond_4f

    iget p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, p2, p1, p4}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p4, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    :cond_4f
    return-void

    :cond_50
    :goto_50
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method public notifyEdgeReached(III)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    iput p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mOver:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iget p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int p3, p3

    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_12
    return-void
.end method

.method public setFinalPosition(I)V
    .registers 4

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_f

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_f
    iget p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDistance:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public setFriction(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method public springback(III)Z
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iput v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_1a

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1f

    :cond_1a
    if-le p1, p3, :cond_1f

    invoke-direct {p0, p1, p3, v1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startSpringback(III)V

    :cond_1f
    :goto_1f
    iget-boolean p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method public startScroll(III)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startScroll(IIIF)V

    return-void
.end method

.method public startScroll(IIIF)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    iput p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    iget-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_19
    iget p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_67

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPRING_PROPERTY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p1, p0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p1

    const p2, 0x7f0706ee

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p2

    const p3, 0x7f0706ed

    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p1

    iget-object p3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/launcher3/util/k;

    invoke-direct {p2, p0}, Lcom/android/launcher3/util/k;-><init>(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_67
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method public update()Z
    .registers 10

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget-boolean p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinished:Z

    return p0

    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1d

    iget p0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    if-lez p0, :cond_1c

    move v3, v4

    :cond_1c
    return v3

    :cond_1d
    iget v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_25

    return v3

    :cond_25
    const-wide/16 v5, 0x0

    iget v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    const/high16 v7, 0x447a0000  # 1000.0f

    if-eqz v3, :cond_6c

    const/high16 v8, 0x40000000  # 2.0f

    if-eq v3, v4, :cond_49

    const/4 v2, 0x2

    if-eq v3, v2, :cond_35

    goto :goto_a0

    :cond_35
    long-to-float v0, v0

    div-float/2addr v0, v7

    iget v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v5, v3, v0

    add-float/2addr v5, v2

    iput v5, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v8

    add-float/2addr v3, v1

    float-to-double v5, v3

    goto :goto_a0

    :cond_49
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    iget v2, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mOver:I

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

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto :goto_a0

    :cond_6c
    long-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000  # 100.0f

    mul-float v3, v0, v2

    float-to-int v3, v3

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/16 v8, 0x64

    if-ge v3, v8, :cond_93

    if-ltz v3, :cond_93

    int-to-float v5, v3

    div-float/2addr v5, v2

    add-int/lit8 v6, v3, 0x1

    int-to-float v8, v6

    div-float/2addr v8, v2

    sget-object v2, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v3, v2, v3

    aget v2, v2, v6

    sub-float/2addr v2, v3

    sub-float/2addr v8, v5

    div-float v6, v2, v8

    invoke-static {v0, v5, v6, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v5

    :cond_93
    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v2, v0

    mul-float/2addr v5, v2

    float-to-double v2, v5

    int-to-float v0, v0

    mul-float/2addr v6, v0

    int-to-float v0, v1

    div-float/2addr v6, v0

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v5, v2

    :goto_a0
    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v4
.end method

.method public updateScroll(F)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-static {p1, v1, v0}, Landroidx/core/animation/b;->a(FFI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method

.method public useFrictionCoefficient(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->mUseFrictionCoefficient:Z

    return-void
.end method
