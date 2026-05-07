.class public final Ll2/e;
.super Lk/m;
.source ""


# instance fields
.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>(FFIIF)V
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk/m;-><init>(I)V

    move/from16 v1, p5

    iput v1, v0, Ll2/e;->d:F

    const/4 v1, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    if-ge v2, v1, :cond_12

    move v2, v1

    :cond_12
    if-ge v3, v1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    mul-int v5, v3, v4

    mul-int/lit8 v5, v5, 0xa

    new-array v6, v5, [F

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float v8, p1, v7

    div-float v7, p2, v7

    int-to-float v2, v2

    div-float v9, p1, v2

    int-to-float v1, v1

    div-float v10, p2, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2e
    if-ge v11, v4, :cond_d4

    int-to-float v13, v11

    mul-float v14, v13, v10

    sub-float/2addr v14, v7

    const/4 v15, 0x0

    :goto_35
    if-ge v15, v3, :cond_c6

    move/from16 p3, v3

    int-to-float v3, v15

    mul-float v16, v3, v9

    sub-float v16, v16, v8

    add-int/lit8 v17, v12, 0x1

    aput v16, v6, v12

    add-int/lit8 v12, v17, 0x1

    aput v14, v6, v17

    add-int/lit8 v16, v12, 0x1

    const/16 v17, 0x0

    aput v17, v6, v12

    add-int/lit8 v12, v16, 0x1

    div-float/2addr v3, v2

    aput v3, v6, v16

    add-int/lit8 v3, v12, 0x1

    const/high16 v16, 0x3f800000  # 1.0f

    div-float v17, v13, v1

    sub-float v16, v16, v17

    aput v16, v6, v12

    add-int/lit8 v12, v3, 0x1

    sget-object v16, Lt2/a;->b:Lt2/a;

    move/from16 v16, v1

    sget-object v1, Lt2/a;->a:Ljava/util/Random;

    move/from16 v17, v2

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v2, -0x40800000  # -1.0f

    move/from16 p5, v7

    move/from16 p4, v8

    float-to-double v7, v2

    int-to-double v1, v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sget-object v2, Lt2/a;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v1

    iget v1, v0, Ll2/e;->d:F

    mul-float/2addr v2, v1

    aput v2, v6, v3

    add-int/lit8 v1, v12, 0x1

    sget-object v2, Lt2/a;->a:Ljava/util/Random;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    sget-object v3, Lt2/a;->a:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v2

    iget v2, v0, Ll2/e;->d:F

    mul-float/2addr v3, v2

    aput v3, v6, v12

    add-int/lit8 v3, v1, 0x1

    aput v2, v6, v1

    add-int/lit8 v1, v3, 0x1

    aput v2, v6, v3

    add-int/lit8 v12, v1, 0x1

    sget-object v2, Lt2/a;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, -0x40800000  # -1.0f

    add-float/2addr v2, v3

    aput v2, v6, v1

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v7, p5

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_35

    :cond_c6
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 p3, v3

    move/from16 p5, v7

    move/from16 p4, v8

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2e

    :cond_d4
    iput v5, v0, Ll2/e;->c:I

    mul-int/lit8 v1, v5, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    new-instance v2, Lm2/a;

    invoke-direct {v2, v5, v1}, Lm2/a;-><init>(ILjava/nio/Buffer;)V

    const-string v1, "<set-?>"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lk/m;->b:Ljava/lang/Object;

    return-void
.end method
