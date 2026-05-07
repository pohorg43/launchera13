.class public Lcom/coui/appcompat/roundRect/COUIShapePath;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;
    .registers 10
    .param p0  # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/roundRect/COUIShapePath;->b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    return-object p0
.end method

.method public static b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;
    .registers 41
    .param p0  # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_b

    move v8, v1

    goto :goto_d

    :cond_b
    move/from16 v8, p2

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    iget v9, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, v0, Landroid/graphics/RectF;->top:F

    sub-float v11, v1, v9

    sub-float v12, v2, v10

    const/high16 v0, 0x40000000  # 2.0f

    div-float v13, v11, v0

    div-float v14, v12, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000  # 1.0f

    if-lez v0, :cond_4a

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    const/high16 v2, 0x3f000000  # 0.5f

    sub-float/2addr v0, v2

    const v2, 0x3ecccccd  # 0.4f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3e0e1bf0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    move v15, v0

    goto :goto_4b

    :cond_4a
    move v15, v1

    :goto_4b
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    const v2, 0x3f19999a  # 0.6f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6c

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    sub-float/2addr v0, v2

    const v2, 0x3e99999a  # 0.3f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3d2de440

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    :cond_6c
    move/from16 v16, v1

    add-float v0, v9, v13

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const v17, 0x41b08f5c  # 22.07f

    const v18, 0x420b70a4  # 34.86f

    const v19, 0x4155c28f  # 13.36f

    const v20, 0x424ca3d7  # 51.16f

    const v21, 0x40947ae1  # 4.64f

    const v22, 0x4286e666  # 67.45f

    const v23, 0x42a73d71  # 83.62f

    const v24, 0x430030a4  # 128.19f

    const/high16 v25, 0x42c80000  # 100.0f

    if-nez p4, :cond_97

    add-float v0, v9, v11

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 p1, v13

    goto :goto_f4

    :cond_97
    div-float v26, v8, v25

    mul-float v0, v26, v24

    mul-float v6, v0, v15

    sub-float v0, v11, v6

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v9

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v27, v9, v11

    mul-float v0, v26, v23

    mul-float v28, v0, v16

    sub-float v1, v27, v28

    mul-float v29, v26, v22

    sub-float v3, v27, v29

    mul-float v30, v26, v21

    add-float v4, v10, v30

    mul-float v31, v26, v20

    sub-float v5, v27, v31

    mul-float v32, v26, v19

    add-float v33, v10, v32

    move-object/from16 v0, p0

    move v2, v10

    move/from16 p1, v13

    move v13, v6

    move/from16 v6, v33

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v0, v26, v18

    sub-float v1, v27, v0

    mul-float v26, v26, v17

    add-float v2, v10, v26

    sub-float v3, v27, v26

    add-float v4, v10, v0

    sub-float v5, v27, v32

    add-float v6, v10, v31

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v27, v30

    add-float v2, v10, v29

    add-float v4, v10, v28

    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v6, v0, v10

    move-object/from16 v0, p0

    move/from16 v3, v27

    move/from16 v5, v27

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_f4
    if-nez p6, :cond_ff

    add-float/2addr v11, v9

    add-float v0, v10, v12

    invoke-virtual {v7, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v13, p1

    goto :goto_15d

    :cond_ff
    add-float v13, v9, v11

    div-float v26, v8, v25

    mul-float v0, v26, v24

    mul-float v27, v0, v15

    sub-float v0, v12, v27

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v7, v13, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v28, v10, v12

    mul-float v0, v26, v23

    mul-float v29, v0, v16

    sub-float v2, v28, v29

    mul-float v30, v26, v21

    sub-float v3, v13, v30

    mul-float v31, v26, v22

    sub-float v4, v28, v31

    mul-float v32, v26, v19

    sub-float v5, v13, v32

    mul-float v33, v26, v20

    sub-float v6, v28, v33

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v0, v26, v17

    sub-float v1, v13, v0

    mul-float v26, v26, v18

    sub-float v2, v28, v26

    sub-float v3, v13, v26

    sub-float v4, v28, v0

    sub-float v5, v13, v33

    sub-float v6, v28, v32

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v13, v31

    sub-float v2, v28, v30

    sub-float v3, v13, v29

    sub-float v11, v11, v27

    move/from16 v13, p1

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v5, v0, v9

    move-object/from16 v0, p0

    move/from16 v4, v28

    move/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_15d
    if-nez p5, :cond_164

    add-float/2addr v12, v10

    invoke-virtual {v7, v9, v12}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1c2

    :cond_164
    div-float v11, v8, v25

    mul-float v0, v11, v24

    mul-float v6, v0, v15

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v9

    add-float v5, v10, v12

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v0, v11, v23

    mul-float v26, v0, v16

    add-float v1, v9, v26

    mul-float v27, v11, v22

    add-float v3, v9, v27

    mul-float v28, v11, v21

    sub-float v4, v5, v28

    mul-float v29, v11, v20

    add-float v30, v9, v29

    mul-float v31, v11, v19

    sub-float v32, v5, v31

    move-object/from16 v0, p0

    move v2, v5

    move/from16 v33, v5

    move/from16 v5, v30

    move/from16 v30, v6

    move/from16 v6, v32

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v0, v11, v18

    add-float v1, v9, v0

    mul-float v11, v11, v17

    sub-float v2, v33, v11

    add-float v3, v9, v11

    sub-float v4, v33, v0

    add-float v5, v9, v31

    sub-float v6, v33, v29

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, v9, v28

    sub-float v2, v33, v27

    sub-float v4, v33, v26

    sub-float v12, v12, v30

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v6, v0, v10

    move-object/from16 v0, p0

    move v3, v9

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_1c2
    if-nez p3, :cond_1c8

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_218

    :cond_1c8
    div-float v8, v8, v25

    mul-float v24, v24, v8

    mul-float v11, v24, v15

    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v7, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v23, v23, v8

    mul-float v23, v23, v16

    add-float v2, v10, v23

    mul-float v21, v21, v8

    add-float v3, v9, v21

    mul-float v22, v22, v8

    add-float v4, v10, v22

    mul-float v19, v19, v8

    add-float v5, v9, v19

    mul-float v20, v20, v8

    add-float v6, v10, v20

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v17, v17, v8

    add-float v1, v9, v17

    mul-float v8, v8, v18

    add-float v2, v10, v8

    add-float v3, v9, v8

    add-float v4, v10, v17

    add-float v5, v9, v20

    add-float v6, v10, v19

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, v9, v22

    add-float v2, v10, v21

    add-float v3, v9, v23

    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v5, v0, v9

    move-object/from16 v0, p0

    move v4, v10

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_218
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-object v7
.end method
