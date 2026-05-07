.class public Lo/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static b:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field

.field public static c:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lo/q;->a:Landroid/view/animation/Interpolator;

    const-string/jumbo v1, "t"

    const-string/jumbo v2, "s"

    const-string v3, "e"

    const-string/jumbo v4, "o"

    const-string v5, "i"

    const-string v6, "h"

    const-string/jumbo v7, "to"

    const-string/jumbo v8, "ti"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/q;->c:Lp/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;Z)Lr/a;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp/c;",
            "Lcom/airbnb/lottie/d;",
            "F",
            "Lo/h0<",
            "TT;>;Z)",
            "Lr/a<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz p4, :cond_116

    const-class v3, Lo/q;

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    const/4 v6, 0x0

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v13, v11

    move-object v15, v13

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v12

    if-eqz v12, :cond_58

    sget-object v12, Lo/q;->c:Lp/c$a;

    invoke-virtual {v0, v12}, Lp/c;->m(Lp/c$a;)I

    move-result v12

    packed-switch v12, :pswitch_data_120

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_16

    :pswitch_29  #0x7
    invoke-static {v0, v1}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object v13

    goto :goto_16

    :pswitch_2e  #0x6
    invoke-static {v0, v1}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object v15

    goto :goto_16

    :pswitch_33  #0x5
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_3c

    move v7, v12

    goto :goto_16

    :cond_3c
    const/4 v7, 0x0

    goto :goto_16

    :pswitch_3e  #0x4
    invoke-static {v0, v1}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object v9

    goto :goto_16

    :pswitch_43  #0x3
    invoke-static {v0, v1}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_16

    :pswitch_48  #0x2
    invoke-interface {v2, v0, v1}, Lo/h0;->a(Lp/c;F)Ljava/lang/Object;

    move-result-object v10

    goto :goto_16

    :pswitch_4d  #0x1
    invoke-interface {v2, v0, v1}, Lo/h0;->a(Lp/c;F)Ljava/lang/Object;

    move-result-object v11

    goto :goto_16

    :pswitch_52  #0x0
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v4

    double-to-float v14, v4

    goto :goto_16

    :cond_58
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    if-eqz v7, :cond_62

    sget-object v0, Lo/q;->a:Landroid/view/animation/Interpolator;

    move-object v12, v11

    goto/16 :goto_104

    :cond_62
    if-eqz v8, :cond_100

    if-eqz v9, :cond_100

    iget v0, v8, Landroid/graphics/PointF;->x:F

    neg-float v2, v1

    invoke-static {v0, v2, v1}, Lq/i;->b(FFF)F

    move-result v0

    iput v0, v8, Landroid/graphics/PointF;->x:F

    iget v0, v8, Landroid/graphics/PointF;->y:F

    const/high16 v4, -0x3d380000  # -100.0f

    const/high16 v5, 0x42c80000  # 100.0f

    invoke-static {v0, v4, v5}, Lq/i;->b(FFF)F

    move-result v0

    iput v0, v8, Landroid/graphics/PointF;->y:F

    iget v0, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2, v1}, Lq/i;->b(FFF)F

    move-result v0

    iput v0, v9, Landroid/graphics/PointF;->x:F

    iget v0, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4, v5}, Lq/i;->b(FFF)F

    move-result v0

    iput v0, v9, Landroid/graphics/PointF;->y:F

    iget v2, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    iget v5, v9, Landroid/graphics/PointF;->x:F

    sget-object v7, Lq/j;->a:Landroid/graphics/PathMeasure;

    const/4 v7, 0x0

    cmpl-float v12, v2, v7

    if-eqz v12, :cond_9e

    const/16 v12, 0x20f

    int-to-float v12, v12

    mul-float/2addr v12, v2

    float-to-int v2, v12

    goto :goto_a0

    :cond_9e
    const/16 v2, 0x11

    :goto_a0
    cmpl-float v12, v4, v7

    if-eqz v12, :cond_a9

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :cond_a9
    cmpl-float v4, v5, v7

    if-eqz v4, :cond_b2

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    :cond_b2
    cmpl-float v4, v0, v7

    if-eqz v4, :cond_bb

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    :cond_bb
    monitor-enter v3

    :try_start_bc
    sget-object v0, Lo/q;->b:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_c7

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lo/q;->b:Landroidx/collection/SparseArrayCompat;

    :cond_c7
    sget-object v0, Lo/q;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    monitor-exit v3
    :try_end_d0
    .catchall {:try_start_bc .. :try_end_d0} :catchall_fd

    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/view/animation/Interpolator;

    :cond_d9
    if-eqz v0, :cond_dd

    if-nez v6, :cond_102

    :cond_dd
    iget v0, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iget v4, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v1

    iget v5, v9, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v1

    iget v6, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v1

    invoke-static {v0, v4, v5, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    :try_start_ed
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    monitor-enter v3
    :try_end_f3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ed .. :try_end_f3} :catch_102

    :try_start_f3
    sget-object v1, Lo/q;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v2, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    monitor-exit v3

    goto :goto_102

    :catchall_fa
    move-exception v0

    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw v0
    :try_end_fd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_fc .. :try_end_fd} :catch_102

    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit v3
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v0

    :cond_100
    sget-object v6, Lo/q;->a:Landroid/view/animation/Interpolator;

    :catch_102
    :cond_102
    :goto_102
    move-object v0, v6

    move-object v12, v10

    :goto_104
    new-instance v1, Lr/a;

    const/4 v2, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object v6, v13

    move-object v13, v0

    move-object v3, v15

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lr/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object v3, v1, Lr/a;->m:Landroid/graphics/PointF;

    iput-object v6, v1, Lr/a;->n:Landroid/graphics/PointF;

    return-object v1

    :cond_116
    invoke-interface {v2, v0, v1}, Lo/h0;->a(Lp/c;F)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lr/a;

    invoke-direct {v1, v0}, Lr/a;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_52  #00000000
        :pswitch_4d  #00000001
        :pswitch_48  #00000002
        :pswitch_43  #00000003
        :pswitch_3e  #00000004
        :pswitch_33  #00000005
        :pswitch_2e  #00000006
        :pswitch_29  #00000007
    .end packed-switch
.end method
