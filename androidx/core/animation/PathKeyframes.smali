.class Landroidx/core/animation/PathKeyframes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/animation/PathKeyframes$FloatKeyframesBase;,
        Landroidx/core/animation/PathKeyframes$IntKeyframesBase;,
        Landroidx/core/animation/PathKeyframes$SimpleKeyframes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/animation/Keyframes<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_KEYFRAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/animation/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final FRACTION_OFFSET:I = 0x0

.field private static final NUM_COMPONENTS:I = 0x3

.field private static final X_OFFSET:I = 0x1

.field private static final Y_OFFSET:I = 0x2


# instance fields
.field private final mKeyframeData:[F

.field private mTempPointF:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/core/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 3

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-direct {p0, p1, v0}, Landroidx/core/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p1, p2}, Landroidx/core/animation/PathUtils;->createKeyFrameData(Landroid/graphics/Path;F)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/PathKeyframes;->mKeyframeData:[F

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The path must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static interpolate(FFF)F
    .registers 3

    invoke-static {p2, p1, p0, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private interpolateInRange(FII)Landroid/graphics/PointF;
    .registers 7

    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 p3, p3, 0x3

    iget-object v0, p0, Landroidx/core/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v1, p2, 0x0

    aget v1, v0, v1

    add-int/lit8 v2, p3, 0x0

    aget v2, v0, v2

    sub-float/2addr p1, v1

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    add-int/lit8 v1, p2, 0x1

    aget v1, v0, v1

    add-int/lit8 v2, p3, 0x1

    aget v2, v0, v2

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    invoke-static {p1, v1, v2}, Landroidx/core/animation/PathKeyframes;->interpolate(FFF)F

    move-result v0

    invoke-static {p1, p2, p3}, Landroidx/core/animation/PathKeyframes;->interpolate(FFF)F

    move-result p1

    iget-object p2, p0, Landroidx/core/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Landroidx/core/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object p0
.end method

.method private pointForIndex(I)Landroid/graphics/PointF;
    .registers 5

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Landroidx/core/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    iget-object v2, p0, Landroidx/core/animation/PathKeyframes;->mKeyframeData:[F

    aget v0, v2, v0

    aget p1, v2, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Landroidx/core/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object p0
.end method


# virtual methods
.method public clone()Landroidx/core/animation/Keyframes;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/Keyframes;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/animation/PathKeyframes;->clone()Landroidx/core/animation/Keyframes;

    move-result-object p0

    return-object p0
.end method

.method public createXFloatKeyframes()Landroidx/core/animation/Keyframes$FloatKeyframes;
    .registers 2

    new-instance v0, Landroidx/core/animation/PathKeyframes$1;

    invoke-direct {v0, p0}, Landroidx/core/animation/PathKeyframes$1;-><init>(Landroidx/core/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createXIntKeyframes()Landroidx/core/animation/Keyframes$IntKeyframes;
    .registers 2

    new-instance v0, Landroidx/core/animation/PathKeyframes$3;

    invoke-direct {v0, p0}, Landroidx/core/animation/PathKeyframes$3;-><init>(Landroidx/core/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYFloatKeyframes()Landroidx/core/animation/Keyframes$FloatKeyframes;
    .registers 2

    new-instance v0, Landroidx/core/animation/PathKeyframes$2;

    invoke-direct {v0, p0}, Landroidx/core/animation/PathKeyframes$2;-><init>(Landroidx/core/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYIntKeyframes()Landroidx/core/animation/Keyframes$IntKeyframes;
    .registers 2

    new-instance v0, Landroidx/core/animation/PathKeyframes$4;

    invoke-direct {v0, p0}, Landroidx/core/animation/PathKeyframes$4;-><init>(Landroidx/core/animation/PathKeyframes;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/animation/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Landroidx/core/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/PointF;

    return-object p0
.end method

.method public getValue(F)Landroid/graphics/PointF;
    .registers 8

    iget-object v0, p0, Landroidx/core/animation/PathKeyframes;->mKeyframeData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_11

    invoke-direct {p0, p1, v3, v4}, Landroidx/core/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_11
    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1f

    add-int/lit8 v1, v0, -0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, p1, v1, v0}, Landroidx/core/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1f
    cmpl-float v1, p1, v1

    if-nez v1, :cond_28

    invoke-direct {p0, v3}, Landroidx/core/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_28
    if-nez v2, :cond_30

    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Landroidx/core/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_30
    sub-int/2addr v0, v4

    move v1, v3

    :goto_32
    if-gt v1, v0, :cond_53

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Landroidx/core/animation/PathKeyframes;->mKeyframeData:[F

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v3

    aget v4, v4, v5

    cmpg-float v5, p1, v4

    if-gez v5, :cond_47

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_32

    :cond_47
    cmpl-float v1, p1, v4

    if-lez v1, :cond_4e

    add-int/lit8 v1, v2, 0x1

    goto :goto_32

    :cond_4e
    invoke-direct {p0, v2}, Landroidx/core/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_53
    invoke-direct {p0, p1, v0, v1}, Landroidx/core/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(F)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/core/animation/PathKeyframes;->getValue(F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public setEvaluator(Landroidx/core/animation/TypeEvaluator;)V
    .registers 2

    return-void
.end method
