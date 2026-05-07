.class public Lcom/android/launcher3/graphics/IconShape$LeafSquare;
.super Lcom/android/launcher3/graphics/IconShape$PathShape;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/IconShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeafSquare"
.end annotation


# instance fields
.field private final mRadiusRatio:F

.field private final mTempRadii:[F


# direct methods
.method public constructor <init>(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>(Lcom/android/launcher3/graphics/IconShape$1;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->mTempRadii:[F

    iput p1, p0, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->mRadiusRatio:F

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/graphics/IconShape$LeafSquare;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->lambda$newUpdateListener$0(Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getRadiiArray(FF)[F
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->mTempRadii:[F

    const/4 v0, 0x1

    aput p2, p0, v0

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 v0, 0x7

    aput p1, p0, v0

    const/4 v0, 0x6

    aput p1, p0, v0

    const/4 v0, 0x3

    aput p1, p0, v0

    const/4 v0, 0x2

    aput p1, p0, v0

    const/4 p1, 0x5

    aput p2, p0, p1

    const/4 p1, 0x4

    aput p2, p0, p1

    return-object p0
.end method

.method private synthetic lambda$newUpdateListener$0(Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V
    .registers 13

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    invoke-virtual {p1, p5, p2, p3}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object p1

    const/4 p2, 0x0

    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 p2, 0x2

    aget v3, p1, p2

    const/4 p2, 0x3

    aget v4, p1, p2

    const/4 p2, 0x4

    aget p2, p1, p2

    const/4 p3, 0x5

    aget p1, p1, p3

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->getRadiiArray(FF)[F

    move-result-object v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;FFF)V
    .registers 13

    iget v0, p0, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->mRadiusRatio:F

    mul-float/2addr v0, p4

    add-float/2addr p2, p4

    add-float/2addr p3, p4

    sub-float v2, p2, p4

    sub-float v3, p3, p4

    add-float v4, p2, p4

    add-float v5, p3, p4

    invoke-direct {p0, p4, v0}, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->getRadiiArray(FF)[F

    move-result-object v6

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getDfltIconPath()Landroid/graphics/Path;
    .registers 1

    sget-object p0, Lcom/android/launcher/theme/LauncherIconConfig;->sLeafPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000  # 3.0f

    div-float/2addr v3, v4

    move-object/from16 v5, p0

    iget v4, v5, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->mRadiusRatio:F

    mul-float/2addr v4, v3

    const/4 v6, 0x6

    new-array v7, v6, [F

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    const/4 v10, 0x1

    aput v8, v7, v10

    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    const/4 v11, 0x2

    aput v8, v7, v11

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    const/4 v12, 0x3

    aput v8, v7, v12

    const/4 v8, 0x4

    aput v3, v7, v8

    const/4 v13, 0x5

    aput v4, v7, v13

    new-array v14, v6, [F

    iget v15, v1, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    aput v15, v14, v9

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    aput v9, v14, v10

    iget v9, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    aput v9, v14, v11

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    aput v9, v14, v12

    aput v2, v14, v8

    aput v2, v14, v13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startRect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endRect: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endRadius: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", R1: "

    const-string v1, ", R2: "

    invoke-static {v8, v2, v0, v3, v1}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeafSquare"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    new-array v1, v6, [F

    invoke-direct {v0, v1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    new-instance v1, Lcom/android/launcher3/graphics/d;

    move-object v4, v1

    move-object v6, v0

    move-object v8, v14

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/graphics/d;-><init>(Lcom/android/launcher3/graphics/IconShape$LeafSquare;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;)V

    return-object v1
.end method
