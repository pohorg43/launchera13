.class public final Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;

.field private static final SMOOTHNESS:F = 0.4f


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->INSTANCE:Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getPath(FFFFFLandroid/graphics/Path;)Landroid/graphics/Path;
    .registers 25
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p5

    const-class v10, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;

    monitor-enter v10

    :try_start_9
    const-string v1, "path"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    cmpg-float v2, p4, v1

    if-gez v2, :cond_18

    move v11, v1

    goto :goto_1a

    :cond_18
    move/from16 v11, p4

    :goto_1a
    sub-float v1, p2, v0

    sub-float v12, p3, v8

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v2, v1, v2

    add-float/2addr v2, v0

    invoke-virtual {v9, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v13, v0, v1

    sub-float v14, v13, v11

    invoke-virtual {v9, v14, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const v1, 0x3ecccccd  # 0.4f

    mul-float v15, v11, v1

    sub-float v16, v13, v15

    add-float v17, v8, v15

    add-float v7, v8, v11

    move-object/from16 v1, p5

    move/from16 v2, v16

    move/from16 v3, p1

    move v4, v13

    move/from16 v5, v17

    move v6, v13

    move/from16 p2, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float/2addr v12, v8

    sub-float v7, v12, v11

    invoke-virtual {v9, v13, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v18, v12, v15

    move-object/from16 v1, p5

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v16

    move v5, v12

    move v6, v14

    move v13, v7

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float/2addr v11, v0

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v14, v0, v15

    move-object/from16 v1, p5

    move v2, v14

    move v3, v12

    move/from16 v4, p0

    move/from16 v5, v18

    move/from16 v6, p0

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v1, p5

    move/from16 v2, p0

    move/from16 v3, v17

    move v4, v14

    move/from16 v5, p1

    move v6, v11

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V
    :try_end_88
    .catchall {:try_start_9 .. :try_end_88} :catchall_8a

    monitor-exit v10

    return-object v9

    :catchall_8a
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static final getPath(Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/graphics/Path;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "rect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p0

    move v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(FFFFFLandroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "rect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    move v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(FFFFFLandroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
