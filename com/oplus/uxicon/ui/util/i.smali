.class public Lcom/oplus/uxicon/ui/util/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lcom/oplus/uxicon/ui/util/i;


# instance fields
.field public a:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    return-void
.end method

.method public static declared-synchronized a()Lcom/oplus/uxicon/ui/util/i;
    .registers 2

    const-class v0, Lcom/oplus/uxicon/ui/util/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/uxicon/ui/util/i;->b:Lcom/oplus/uxicon/ui/util/i;

    if-nez v1, :cond_e

    new-instance v1, Lcom/oplus/uxicon/ui/util/i;

    invoke-direct {v1}, Lcom/oplus/uxicon/ui/util/i;-><init>()V

    sput-object v1, Lcom/oplus/uxicon/ui/util/i;->b:Lcom/oplus/uxicon/ui/util/i;

    :cond_e
    sget-object v1, Lcom/oplus/uxicon/ui/util/i;->b:Lcom/oplus/uxicon/ui/util/i;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(FFFFF)Landroid/graphics/Path;
    .registers 16

    monitor-enter p0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_b
    invoke-virtual/range {v0 .. v9}, Lcom/oplus/uxicon/ui/util/i;->a(FFFFFZZZZ)Landroid/graphics/Path;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(FFFFFZZZZ)Landroid/graphics/Path;
    .registers 53

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v9, p2

    monitor-enter p0

    :try_start_7
    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    cmpg-float v3, p5, v2

    if-gez v3, :cond_13

    move v10, v2

    goto :goto_15

    :cond_13
    move/from16 v10, p5

    :goto_15
    sub-float v11, p3, v0

    sub-float v12, p4, v9

    const/high16 v2, 0x40000000  # 2.0f

    div-float v13, v11, v2

    div-float v14, v12, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v2, v10, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    cmpl-double v2, v2, v4

    const/high16 v3, 0x3f800000  # 1.0f

    if-lez v2, :cond_47

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v2, v10, v2

    const/high16 v4, 0x3f000000  # 0.5f

    sub-float/2addr v2, v4

    const v4, 0x3ecccccd  # 0.4f

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3e0e1bf0

    mul-float/2addr v2, v4

    sub-float v2, v3, v2

    move v15, v2

    goto :goto_48

    :cond_47
    move v15, v3

    :goto_48
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v2, v10, v2

    const v4, 0x3f19999a  # 0.6f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_69

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v2, v10, v2

    sub-float/2addr v2, v4

    const v4, 0x3e99999a  # 0.3f

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3d2de440

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    :cond_69
    move/from16 v16, v3

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v3, v0, v13

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const v17, 0x41b08f5c  # 22.07f

    const v18, 0x420b70a4  # 34.86f

    const v19, 0x4155c28f  # 13.36f

    const v20, 0x424ca3d7  # 51.16f

    const v21, 0x40947ae1  # 4.64f

    const v22, 0x4286e666  # 67.45f

    const v23, 0x42a73d71  # 83.62f

    const v24, 0x430030a4  # 128.19f

    const/high16 v25, 0x42c80000  # 100.0f

    if-nez p7, :cond_98

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v3, v0, v11

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v34, v13

    goto :goto_fc

    :cond_98
    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    div-float v26, v10, v25

    mul-float v3, v26, v24

    mul-float v8, v3, v15

    sub-float v3, v11, v8

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v32, v0, v11

    mul-float v3, v26, v23

    mul-float v27, v3, v16

    sub-float v3, v32, v27

    mul-float v28, v26, v22

    sub-float v5, v32, v28

    mul-float v29, v26, v21

    add-float v6, v9, v29

    mul-float v30, v26, v20

    sub-float v7, v32, v30

    mul-float v31, v26, v19

    add-float v33, v9, v31

    move/from16 v4, p2

    move/from16 v34, v13

    move v13, v8

    move/from16 v8, v33

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    mul-float v3, v26, v18

    sub-float v36, v32, v3

    mul-float v26, v26, v17

    add-float v37, v9, v26

    sub-float v38, v32, v26

    add-float v39, v9, v3

    sub-float v40, v32, v31

    add-float v41, v9, v30

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v41}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    sub-float v3, v32, v29

    add-float v29, v9, v28

    add-float v31, v9, v27

    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float v33, v9, v4

    move-object/from16 v27, v2

    move/from16 v28, v3

    move/from16 v30, v32

    invoke-virtual/range {v27 .. v33}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_fc
    if-nez p9, :cond_10a

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v3, v0, v11

    add-float v4, v9, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v13, v34

    goto :goto_16f

    :cond_10a
    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v3, v0, v11

    div-float v4, v10, v25

    mul-float v5, v4, v24

    mul-float/2addr v5, v15

    sub-float v6, v12, v5

    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v9

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v6, v9, v12

    mul-float v7, v4, v23

    mul-float v7, v7, v16

    sub-float v28, v6, v7

    mul-float v8, v4, v21

    sub-float v29, v3, v8

    mul-float v13, v4, v22

    sub-float v30, v6, v13

    mul-float v33, v4, v19

    sub-float v31, v3, v33

    mul-float v35, v4, v20

    sub-float v32, v6, v35

    move-object/from16 v26, v2

    move/from16 v27, v3

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    mul-float v26, v4, v17

    sub-float v37, v3, v26

    mul-float v4, v4, v18

    sub-float v38, v6, v4

    sub-float v39, v3, v4

    sub-float v40, v6, v26

    sub-float v41, v3, v35

    sub-float v42, v6, v33

    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v42}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    sub-float v27, v3, v13

    sub-float v28, v6, v8

    sub-float v29, v3, v7

    sub-float/2addr v11, v5

    move/from16 v13, v34

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v31, v0, v3

    move-object/from16 v26, v2

    move/from16 v30, v6

    move/from16 v32, v6

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_16f
    if-nez p8, :cond_179

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v3, v9, v12

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1d6

    :cond_179
    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    div-float v3, v10, v25

    mul-float v4, v3, v24

    mul-float/2addr v4, v15

    invoke-static {v13, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v5, v0

    add-float v6, v9, v12

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    mul-float v5, v3, v23

    mul-float v5, v5, v16

    add-float v27, v0, v5

    mul-float v7, v3, v22

    add-float v29, v0, v7

    mul-float v8, v3, v21

    sub-float v30, v6, v8

    mul-float v11, v3, v20

    add-float v31, v0, v11

    mul-float v33, v3, v19

    sub-float v32, v6, v33

    move-object/from16 v26, v2

    move/from16 v28, v6

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    mul-float v26, v3, v18

    add-float v35, v0, v26

    mul-float v3, v3, v17

    sub-float v36, v6, v3

    add-float v37, v0, v3

    sub-float v38, v6, v26

    add-float v39, v0, v33

    sub-float v40, v6, v11

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v40}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v3, v0, v8

    sub-float v7, v6, v7

    sub-float/2addr v6, v5

    sub-float/2addr v12, v4

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float v8, v9, v4

    move v4, v7

    move/from16 v5, p1

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_1d6
    if-nez p6, :cond_1df

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_259

    :cond_1df
    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    div-float v10, v10, v25

    mul-float v24, v24, v10

    mul-float v3, v24, v15

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v4, v9

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    mul-float v23, v23, v10

    mul-float v23, v23, v16

    add-float v4, v9, v23

    mul-float v21, v21, v10

    add-float v5, v0, v21

    mul-float v22, v22, v10

    add-float v6, v9, v22

    mul-float v19, v19, v10

    add-float v7, v0, v19

    mul-float v20, v20, v10

    add-float v8, v9, v20

    move-object/from16 p3, v2

    move/from16 p4, p1

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    invoke-virtual/range {p3 .. p9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    mul-float v17, v17, v10

    add-float v4, v0, v17

    mul-float v10, v10, v18

    add-float v5, v9, v10

    add-float v6, v0, v10

    add-float v7, v9, v17

    add-float v8, v0, v20

    add-float v10, v9, v19

    move-object/from16 p3, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v10

    invoke-virtual/range {p3 .. p9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    add-float v4, v0, v22

    add-float v5, v9, v21

    add-float v6, v0, v23

    invoke-static {v13, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v0, v3

    move-object/from16 p3, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, p2

    move/from16 p8, v0

    move/from16 p9, p2

    invoke-virtual/range {p3 .. p9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_259
    iget-object v0, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/Path;

    iget-object v2, v1, Lcom/oplus/uxicon/ui/util/i;->a:Landroid/graphics/Path;

    invoke-direct {v0, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V
    :try_end_265
    .catchall {:try_start_7 .. :try_end_265} :catchall_267

    monitor-exit p0

    return-object v0

    :catchall_267
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/graphics/Rect;F)Landroid/graphics/Path;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uxicon/ui/util/i;->a(FFFFF)Landroid/graphics/Path;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method
