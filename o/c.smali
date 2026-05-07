.class public Lo/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lp/c$a;

.field public static b:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "a"

    const-string/jumbo v1, "p"

    const-string/jumbo v2, "s"

    const-string/jumbo v3, "rz"

    const-string/jumbo v4, "r"

    const-string/jumbo v5, "o"

    const-string/jumbo v6, "so"

    const-string v7, "eo"

    const-string/jumbo v8, "sk"

    const-string/jumbo v9, "sa"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/c;->a:Lp/c$a;

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/c;->b:Lp/c$a;

    return-void
.end method

.method public static a(Lp/c;Lcom/airbnb/lottie/d;)Lk/k;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lp/c;->k()Lp/c$b;

    move-result-object v1

    sget-object v2, Lp/c$b;->c:Lp/c$b;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_f

    const/4 v11, 0x1

    goto :goto_10

    :cond_f
    move v11, v10

    :goto_10
    if-eqz v11, :cond_15

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    :cond_15
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_124

    sget-object v2, Lo/c;->a:Lp/c$a;

    invoke-virtual {v0, v2}, Lp/c;->m(Lp/c$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_240

    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto/16 :goto_11f

    :pswitch_3e  #0x9
    invoke-static {v0, v8, v10}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v13

    goto :goto_21

    :pswitch_43  #0x8
    invoke-static {v0, v8, v10}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v14

    goto :goto_21

    :pswitch_48  #0x7
    invoke-static {v0, v8, v10}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v23

    goto :goto_21

    :pswitch_4d  #0x6
    invoke-static {v0, v8, v10}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v22

    goto :goto_21

    :pswitch_52  #0x5
    invoke-static/range {p0 .. p1}, Lo/d;->e(Lp/c;Lcom/airbnb/lottie/d;)Lk/d;

    move-result-object v21

    goto :goto_21

    :pswitch_57  #0x3
    const-string v1, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    :pswitch_5c  #0x4
    invoke-static {v0, v8, v10}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v5

    iget-object v1, v5, Lk/m;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v1, v5, Lk/m;->b:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    new-instance v2, Lr/a;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget v1, v8, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object v1, v2

    move-object v3, v2

    move-object/from16 v2, p1

    move-object v9, v3

    move-object/from16 v3, v16

    move-object v12, v4

    move-object/from16 v4, v17

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 v26, v6

    move/from16 v6, v19

    move-object/from16 v18, v13

    move-object v13, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lr/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    :cond_a0
    move-object v10, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    iget-object v1, v10, Lk/m;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    iget-object v1, v1, Lr/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_dc

    iget-object v1, v10, Lk/m;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    new-instance v12, Lr/a;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v1, v8, Lcom/airbnb/lottie/d;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lr/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    const/4 v1, 0x0

    invoke-interface {v9, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_dc
    :goto_dc
    move-object v1, v10

    :goto_dd
    move-object/from16 v6, v26

    goto :goto_11e

    :pswitch_e0  #0x2
    move-object/from16 v18, v13

    move-object v13, v7

    new-instance v6, Lk/f;

    sget-object v2, Lo/a0;->a:Lo/a0;

    invoke-static {v0, v8, v2}, Lo/d;->a(Lp/c;Lcom/airbnb/lottie/d;Lo/h0;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Lk/f;-><init>(Ljava/util/List;)V

    goto :goto_11e

    :pswitch_ef  #0x1
    move-object/from16 v26, v6

    move-object/from16 v18, v13

    invoke-static/range {p0 .. p1}, Lo/a;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/l;

    move-result-object v7

    goto :goto_11f

    :pswitch_f8  #0x0
    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    :goto_100
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_11a

    sget-object v2, Lo/c;->b:Lp/c$a;

    invoke-virtual {v0, v2}, Lp/c;->m(Lp/c$a;)I

    move-result v2

    if-eqz v2, :cond_115

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_100

    :cond_115
    invoke-static/range {p0 .. p1}, Lo/a;->a(Lp/c;Lcom/airbnb/lottie/d;)Lg/b;

    move-result-object v15

    goto :goto_100

    :cond_11a
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    goto :goto_dd

    :goto_11e
    move-object v7, v13

    :goto_11f
    move-object/from16 v13, v18

    const/4 v10, 0x0

    goto/16 :goto_21

    :cond_124
    move-object/from16 v26, v6

    move-object/from16 v18, v13

    move-object v13, v7

    if-eqz v11, :cond_12e

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    :cond_12e
    if-eqz v15, :cond_14e

    invoke-virtual {v15}, Lg/b;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, v15, Lg/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    iget-object v0, v0, Lr/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_14c

    goto :goto_14e

    :cond_14c
    const/4 v0, 0x0

    goto :goto_14f

    :cond_14e
    :goto_14e
    const/4 v0, 0x1

    :goto_14f
    if-eqz v0, :cond_152

    const/4 v15, 0x0

    :cond_152
    if-eqz v13, :cond_176

    instance-of v0, v13, Lk/h;

    if-nez v0, :cond_174

    invoke-interface {v13}, Lk/l;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_174

    invoke-interface {v13}, Lk/l;->getKeyframes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    iget-object v0, v0, Lr/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_174

    goto :goto_176

    :cond_174
    const/4 v0, 0x0

    goto :goto_177

    :cond_176
    :goto_176
    const/4 v0, 0x1

    :goto_177
    if-eqz v0, :cond_17a

    const/4 v13, 0x0

    :cond_17a
    if-eqz v1, :cond_19c

    invoke-virtual {v1}, Lk/m;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_19a

    iget-object v0, v1, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    iget-object v0, v0, Lr/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_19a

    goto :goto_19c

    :cond_19a
    const/4 v0, 0x0

    goto :goto_19d

    :cond_19c
    :goto_19c
    const/4 v0, 0x1

    :goto_19d
    if-eqz v0, :cond_1a4

    move-object/from16 v6, v26

    const/16 v20, 0x0

    goto :goto_1a8

    :cond_1a4
    move-object/from16 v20, v1

    move-object/from16 v6, v26

    :goto_1a8
    if-eqz v6, :cond_1d5

    invoke-virtual {v6}, Lk/m;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1d3

    iget-object v0, v6, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    iget-object v0, v0, Lr/a;->b:Ljava/lang/Object;

    check-cast v0, Lr/d;

    iget v1, v0, Lr/d;->a:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1cf

    iget v0, v0, Lr/d;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1cf

    const/4 v0, 0x1

    goto :goto_1d0

    :cond_1cf
    const/4 v0, 0x0

    :goto_1d0
    if-eqz v0, :cond_1d3

    goto :goto_1d5

    :cond_1d3
    const/4 v0, 0x0

    goto :goto_1d6

    :cond_1d5
    :goto_1d5
    const/4 v0, 0x1

    :goto_1d6
    if-eqz v0, :cond_1db

    const/16 v19, 0x0

    goto :goto_1dd

    :cond_1db
    move-object/from16 v19, v6

    :goto_1dd
    if-eqz v14, :cond_1ff

    invoke-virtual {v14}, Lk/m;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1fd

    iget-object v0, v14, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    iget-object v0, v0, Lr/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1fd

    goto :goto_1ff

    :cond_1fd
    const/4 v2, 0x0

    goto :goto_200

    :cond_1ff
    :goto_1ff
    const/4 v2, 0x1

    :goto_200
    if-eqz v2, :cond_203

    const/4 v14, 0x0

    :cond_203
    if-eqz v18, :cond_228

    invoke-virtual/range {v18 .. v18}, Lk/m;->isStatic()Z

    move-result v0

    move-object/from16 v12, v18

    if-eqz v0, :cond_225

    iget-object v0, v12, Lk/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    iget-object v0, v0, Lr/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_226

    goto :goto_22a

    :cond_225
    const/4 v1, 0x0

    :cond_226
    move v9, v1

    goto :goto_22b

    :cond_228
    move-object/from16 v12, v18

    :goto_22a
    const/4 v9, 0x1

    :goto_22b
    if-eqz v9, :cond_230

    const/16 v25, 0x0

    goto :goto_232

    :cond_230
    move-object/from16 v25, v12

    :goto_232
    new-instance v0, Lk/k;

    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-object/from16 v18, v13

    move-object/from16 v24, v14

    invoke-direct/range {v16 .. v25}, Lk/k;-><init>(Lg/b;Lk/l;Lk/f;Lk/b;Lk/d;Lk/b;Lk/b;Lk/b;Lk/b;)V

    return-object v0

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_f8  #00000000
        :pswitch_ef  #00000001
        :pswitch_e0  #00000002
        :pswitch_57  #00000003
        :pswitch_5c  #00000004
        :pswitch_52  #00000005
        :pswitch_4d  #00000006
        :pswitch_48  #00000007
        :pswitch_43  #00000008
        :pswitch_3e  #00000009
    .end packed-switch
.end method
