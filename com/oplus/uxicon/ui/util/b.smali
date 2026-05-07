.class public Lcom/oplus/uxicon/ui/util/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Landroid/graphics/Canvas;

.field public final d:[B

.field public final e:Landroid/graphics/Rect;

.field public f:F

.field public final g:[F

.field public final h:[F

.field public final i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/util/b;->a:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/b;->b:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/util/b;->c:Landroid/graphics/Canvas;

    mul-int v0, p1, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/b;->d:[B

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/b;->g:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/b;->h:[F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/b;->i:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/b;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public static a([FIII)V
    .registers 12

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    add-int/lit8 v1, p2, 0x1

    const v2, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v3, -0x1

    move v4, v2

    :goto_c
    if-gt v1, p3, :cond_61

    aget v5, p0, v1

    const/high16 v6, -0x40800000  # -1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_17

    goto :goto_5e

    :cond_17
    cmpl-float v5, v4, v2

    if-nez v5, :cond_1d

    move v3, p2

    goto :goto_43

    :cond_1d
    aget v5, p0, v1

    aget v6, p0, v3

    sub-float/2addr v5, v6

    sub-int v6, v1, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v5, v4

    int-to-float v4, p1

    mul-float/2addr v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_43

    :cond_2e
    if-le v3, p2, :cond_43

    add-int/lit8 v3, v3, -0x1

    aget v5, p0, v1

    aget v7, p0, v3

    sub-float/2addr v5, v7

    sub-int v7, v1, v3

    int-to-float v7, v7

    div-float/2addr v5, v7

    aget v7, v0, v3

    sub-float/2addr v5, v7

    mul-float/2addr v5, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2e

    :cond_43
    :goto_43
    aget v4, p0, v1

    aget v5, p0, v3

    sub-float/2addr v4, v5

    sub-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v5, v3

    :goto_4d
    if-ge v5, v1, :cond_5d

    aput v4, v0, v5

    aget v6, p0, v3

    sub-int v7, v5, v3

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v6

    aput v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_5d
    move v3, v1

    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_61
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F
    .registers 23
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_7
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    iget v3, v1, Lcom/oplus/uxicon/ui/util/b;->f:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_19

    iget-object v0, v1, Lcom/oplus/uxicon/ui/util/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_19
    iget v0, v1, Lcom/oplus/uxicon/ui/util/b;->f:F
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1a3

    monitor-exit p0

    return v0

    :cond_1d
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v3, :cond_3c

    if-gtz v4, :cond_2a

    goto :goto_3c

    :cond_2a
    iget v5, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    if-gt v3, v5, :cond_30

    if-le v4, v5, :cond_4c

    :cond_30
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    mul-int/2addr v3, v6

    div-int/2addr v3, v5

    mul-int/2addr v6, v4

    div-int v4, v6, v5

    goto :goto_4c

    :cond_3c
    :goto_3c
    if-lez v3, :cond_42

    iget v5, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    if-le v3, v5, :cond_44

    :cond_42
    iget v3, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    :cond_44
    if-lez v4, :cond_4a

    iget v5, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    if-le v4, v5, :cond_4c

    :cond_4a
    iget v4, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    :cond_4c
    :goto_4c
    iget-object v5, v1, Lcom/oplus/uxicon/ui/util/b;->b:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, v1, Lcom/oplus/uxicon/ui/util/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, v1, Lcom/oplus/uxicon/ui/util/b;->d:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v7, v1, Lcom/oplus/uxicon/ui/util/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget v5, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    add-int/lit8 v5, v5, 0x1

    const/4 v7, -0x1

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v7, v6

    :goto_72
    if-ge v6, v4, :cond_111

    move v12, v9

    :goto_75
    const/16 v14, 0x28

    if-ge v7, v3, :cond_a7

    iget v15, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    mul-int/2addr v15, v6

    add-int/2addr v15, v7

    iget-object v13, v1, Lcom/oplus/uxicon/ui/util/b;->d:[B

    aget-byte v13, v13, v15

    and-int/lit16 v13, v13, 0xff

    if-le v13, v14, :cond_a4

    if-nez v7, :cond_89

    const/4 v12, 0x0

    goto :goto_a7

    :cond_89
    const/16 v13, 0x9

    :goto_8b
    if-lez v13, :cond_a4

    iget-object v14, v1, Lcom/oplus/uxicon/ui/util/b;->d:[B

    sub-int v16, v15, v13

    aget-byte v14, v14, v16

    and-int/lit16 v14, v14, 0xff

    move/from16 v18, v15

    const/16 v15, 0x28

    if-le v14, v15, :cond_9e

    if-ne v12, v9, :cond_9e

    move v12, v7

    :cond_9e
    add-int/lit8 v13, v13, -0x1

    move v14, v15

    move/from16 v15, v18

    goto :goto_8b

    :cond_a4
    add-int/lit8 v7, v7, 0xa

    goto :goto_75

    :cond_a7
    :goto_a7
    add-int/lit8 v7, v3, -0x1

    move v13, v7

    :goto_aa
    if-ltz v13, :cond_ed

    iget v14, v1, Lcom/oplus/uxicon/ui/util/b;->a:I

    mul-int/2addr v14, v6

    add-int/2addr v14, v13

    iget-object v15, v1, Lcom/oplus/uxicon/ui/util/b;->d:[B

    aget-byte v15, v15, v14

    and-int/lit16 v15, v15, 0xff

    move/from16 v17, v9

    const/16 v9, 0x28

    if-le v15, v9, :cond_e4

    if-ne v13, v7, :cond_c0

    move v9, v13

    goto :goto_f1

    :cond_c0
    move/from16 v9, v17

    const/16 v15, 0x9

    :goto_c4
    if-lez v15, :cond_e1

    move/from16 v18, v7

    iget-object v7, v1, Lcom/oplus/uxicon/ui/util/b;->d:[B

    add-int v17, v14, v15

    aget-byte v7, v7, v17

    and-int/lit16 v7, v7, 0xff

    move/from16 v19, v14

    const/16 v14, 0x28

    if-le v7, v14, :cond_da

    const/4 v7, -0x1

    if-ne v9, v7, :cond_da

    move v9, v13

    :cond_da
    add-int/lit8 v15, v15, -0x1

    move/from16 v7, v18

    move/from16 v14, v19

    goto :goto_c4

    :cond_e1
    move/from16 v18, v7

    goto :goto_e8

    :cond_e4
    move/from16 v18, v7

    move/from16 v9, v17

    :goto_e8
    add-int/lit8 v13, v13, -0xa

    move/from16 v7, v18

    goto :goto_aa

    :cond_ed
    move/from16 v17, v9

    move/from16 v9, v17

    :goto_f1
    iget-object v7, v1, Lcom/oplus/uxicon/ui/util/b;->g:[F

    int-to-float v13, v12

    aput v13, v7, v6

    iget-object v7, v1, Lcom/oplus/uxicon/ui/util/b;->h:[F

    int-to-float v13, v9

    aput v13, v7, v6

    const/4 v7, -0x1

    if-eq v12, v7, :cond_10b

    if-ne v8, v7, :cond_101

    move v8, v6

    :cond_101
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v11, v6

    move v10, v7

    :cond_10b
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    goto/16 :goto_72

    :cond_111
    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, -0x1

    if-eq v8, v7, :cond_1a1

    if-ne v10, v7, :cond_11a

    goto/16 :goto_1a1

    :cond_11a
    iget-object v9, v1, Lcom/oplus/uxicon/ui/util/b;->g:[F

    const/4 v12, 0x1

    invoke-static {v9, v12, v8, v11}, Lcom/oplus/uxicon/ui/util/b;->a([FIII)V

    iget-object v9, v1, Lcom/oplus/uxicon/ui/util/b;->h:[F

    invoke-static {v9, v7, v8, v11}, Lcom/oplus/uxicon/ui/util/b;->a([FIII)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_127
    if-ge v7, v4, :cond_141

    iget-object v12, v1, Lcom/oplus/uxicon/ui/util/b;->g:[F

    aget v13, v12, v7

    const/high16 v14, -0x40800000  # -1.0f

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_134

    goto :goto_13e

    :cond_134
    iget-object v13, v1, Lcom/oplus/uxicon/ui/util/b;->h:[F

    aget v13, v13, v7

    aget v12, v12, v7
    :try_end_13a
    .catchall {:try_start_1d .. :try_end_13a} :catchall_1a3

    sub-float/2addr v13, v12

    add-float/2addr v13, v6

    add-float/2addr v13, v9

    move v9, v13

    :goto_13e
    add-int/lit8 v7, v7, 0x1

    goto :goto_127

    :cond_141
    add-int/lit8 v7, v11, 0x1

    sub-int/2addr v7, v8

    add-int/lit8 v12, v10, 0x1

    sub-int/2addr v12, v5

    mul-int/2addr v12, v7

    int-to-float v7, v12

    div-float v7, v9, v7

    const v12, 0x3f490fdb

    cmpg-float v12, v7, v12

    if-gez v12, :cond_156

    const v7, 0x3f28e38e

    goto :goto_160

    :cond_156
    const v12, 0x3d25ae4f

    const v13, 0x3f26aaab

    invoke-static {v6, v7, v12, v13}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v7

    :goto_160
    :try_start_160
    iget-object v12, v1, Lcom/oplus/uxicon/ui/util/b;->i:Landroid/graphics/Rect;

    iput v5, v12, Landroid/graphics/Rect;->left:I

    iput v10, v12, Landroid/graphics/Rect;->right:I

    iput v8, v12, Landroid/graphics/Rect;->top:I

    iput v11, v12, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_17d

    int-to-float v5, v5

    int-to-float v12, v3

    div-float/2addr v5, v12

    int-to-float v8, v8

    int-to-float v13, v4

    div-float/2addr v8, v13

    int-to-float v10, v10

    div-float/2addr v10, v12

    sub-float v10, v6, v10

    int-to-float v11, v11

    div-float/2addr v11, v13

    sub-float v11, v6, v11

    invoke-virtual {v2, v5, v8, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_17d
    mul-int/2addr v3, v4

    int-to-float v2, v3

    div-float/2addr v9, v2

    cmpl-float v2, v9, v7

    if-lez v2, :cond_18b

    div-float/2addr v7, v9

    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v6, v2

    :cond_18b
    instance-of v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_19f

    iget v0, v1, Lcom/oplus/uxicon/ui/util/b;->f:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_19f

    iput v6, v1, Lcom/oplus/uxicon/ui/util/b;->f:F

    iget-object v0, v1, Lcom/oplus/uxicon/ui/util/b;->e:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_19f
    .catchall {:try_start_160 .. :try_end_19f} :catchall_1a3

    :cond_19f
    monitor-exit p0

    return v6

    :cond_1a1
    :goto_1a1
    monitor-exit p0

    return v6

    :catchall_1a3
    move-exception v0

    monitor-exit p0

    throw v0
.end method
