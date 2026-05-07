.class public Lo/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/g;->a:Lp/c$a;

    return-void
.end method

.method public static a(Lp/c;Lcom/airbnb/lottie/d;)Ll/b;
    .registers 33
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    const/4 v2, 0x2

    move v3, v2

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2c

    sget-object v4, Lo/g;->a:Lp/c$a;

    invoke-virtual {v0, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    if-eqz v4, :cond_27

    if-eq v4, v5, :cond_22

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_9

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    goto :goto_9

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    move-object v4, v6

    :goto_2d
    if-nez v4, :cond_30

    return-object v6

    :cond_30
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, -0x1

    const/4 v12, 0x0

    sparse-switch v7, :sswitch_data_6c0

    goto/16 :goto_e6

    :sswitch_3e
    const-string/jumbo v7, "tr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    goto/16 :goto_e6

    :cond_49
    const/16 v7, 0xc

    goto/16 :goto_e7

    :sswitch_4d
    const-string/jumbo v7, "tm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_58

    goto/16 :goto_e6

    :cond_58
    const/16 v7, 0xb

    goto/16 :goto_e7

    :sswitch_5c
    const-string/jumbo v7, "st"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    goto/16 :goto_e6

    :cond_67
    const/16 v7, 0xa

    goto/16 :goto_e7

    :sswitch_6b
    const-string/jumbo v7, "sr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_76

    goto/16 :goto_e6

    :cond_76
    const/16 v7, 0x9

    goto/16 :goto_e7

    :sswitch_7a
    const-string/jumbo v7, "sh"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    goto/16 :goto_e6

    :cond_85
    const/16 v7, 0x8

    goto/16 :goto_e7

    :sswitch_89
    const-string/jumbo v7, "rp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_94

    goto/16 :goto_e6

    :cond_94
    const/4 v7, 0x7

    goto/16 :goto_e7

    :sswitch_97
    const-string/jumbo v7, "rc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a1

    goto :goto_e6

    :cond_a1
    const/4 v7, 0x6

    goto :goto_e7

    :sswitch_a3
    const-string/jumbo v7, "mm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ad

    goto :goto_e6

    :cond_ad
    move v7, v8

    goto :goto_e7

    :sswitch_af
    const-string v7, "gs"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b8

    goto :goto_e6

    :cond_b8
    move v7, v9

    goto :goto_e7

    :sswitch_ba
    const-string v7, "gr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c3

    goto :goto_e6

    :cond_c3
    move v7, v10

    goto :goto_e7

    :sswitch_c5
    const-string v7, "gf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ce

    goto :goto_e6

    :cond_ce
    move v7, v2

    goto :goto_e7

    :sswitch_d0
    const-string v7, "fl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d9

    goto :goto_e6

    :cond_d9
    move v7, v5

    goto :goto_e7

    :sswitch_db
    const-string v7, "el"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    goto :goto_e6

    :cond_e4
    move v7, v12

    goto :goto_e7

    :goto_e6
    move v7, v11

    :goto_e7
    const-string/jumbo v13, "o"

    const-string v14, "g"

    const-string v15, "d"

    const/16 v16, 0x0

    packed-switch v7, :pswitch_data_6f6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lq/f;->a(Ljava/lang/String;)V

    goto/16 :goto_6b2

    :pswitch_109  #0xc
    invoke-static/range {p0 .. p1}, Lo/c;->a(Lp/c;Lcom/airbnb/lottie/d;)Lk/k;

    move-result-object v6

    goto/16 :goto_6b2

    :pswitch_10f  #0xb
    sget-object v3, Lo/g0;->a:Lp/c$a;

    move-object v14, v6

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move v15, v12

    move/from16 v19, v15

    :goto_11b
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_168

    sget-object v3, Lo/g0;->a:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    if-eqz v3, :cond_163

    if-eq v3, v5, :cond_15e

    if-eq v3, v2, :cond_159

    if-eq v3, v10, :cond_154

    if-eq v3, v9, :cond_13c

    if-eq v3, v8, :cond_137

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_11b

    :cond_137
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v19

    goto :goto_11b

    :cond_13c
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    if-eq v3, v5, :cond_152

    if-ne v3, v2, :cond_146

    move v15, v2

    goto :goto_11b

    :cond_146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v1, v3}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_152
    move v15, v5

    goto :goto_11b

    :cond_154
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_11b

    :cond_159
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v18

    goto :goto_11b

    :cond_15e
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v17

    goto :goto_11b

    :cond_163
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v16

    goto :goto_11b

    :cond_168
    new-instance v6, Ll/o;

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Ll/o;-><init>(Ljava/lang/String;ILk/b;Lk/b;Lk/b;Z)V

    goto/16 :goto_6b2

    :pswitch_170  #0xa
    sget-object v2, Lo/f0;->a:Lp/c$a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v6

    move-object/from16 v19, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move/from16 v24, v12

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v26, v16

    :cond_189
    :goto_189
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_25e

    sget-object v3, Lo/f0;->a:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    packed-switch v3, :pswitch_data_714

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_189

    :pswitch_19c  #0x8
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_19f
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_20b

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move-object v3, v6

    move-object v4, v3

    :goto_1aa
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v7

    if-eqz v7, :cond_1cb

    sget-object v7, Lo/f0;->b:Lp/c$a;

    invoke-virtual {v0, v7}, Lp/c;->m(Lp/c$a;)I

    move-result v7

    if-eqz v7, :cond_1c6

    if-eq v7, v5, :cond_1c1

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_1aa

    :cond_1c1
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v3

    goto :goto_1aa

    :cond_1c6
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v4

    goto :goto_1aa

    :cond_1cb
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_72a

    goto :goto_1fe

    :sswitch_1dd
    const-string/jumbo v8, "o"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e7

    goto :goto_1fe

    :cond_1e7
    const/4 v7, 0x2

    goto :goto_1fe

    :sswitch_1e9
    const-string v8, "g"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f2

    goto :goto_1fe

    :cond_1f2
    const/4 v7, 0x1

    goto :goto_1fe

    :sswitch_1f4
    const-string v8, "d"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1fd

    goto :goto_1fe

    :cond_1fd
    const/4 v7, 0x0

    :goto_1fe
    packed-switch v7, :pswitch_data_738

    goto :goto_19f

    :pswitch_202  #0x2
    move-object/from16 v19, v3

    goto :goto_19f

    :pswitch_205  #0x0, 0x1
    iput-boolean v5, v1, Lcom/airbnb/lottie/d;->n:Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19f

    :cond_20b
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_189

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_189

    :pswitch_21d  #0x7
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v27

    goto/16 :goto_189

    :pswitch_223  #0x6
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v26, v3

    goto/16 :goto_189

    :pswitch_22c  #0x5
    invoke-static {}, Lj/b;->com$airbnb$lottie$model$content$ShapeStroke$LineJoinType$s$values()[I

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v4

    sub-int/2addr v4, v5

    aget v25, v3, v4

    goto/16 :goto_189

    :pswitch_239  #0x4
    invoke-static {}, Lj/b;->com$airbnb$lottie$model$content$ShapeStroke$LineCapType$s$values()[I

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v4

    sub-int/2addr v4, v5

    aget v24, v3, v4

    goto/16 :goto_189

    :pswitch_246  #0x3
    invoke-static/range {p0 .. p1}, Lo/d;->e(Lp/c;Lcom/airbnb/lottie/d;)Lk/d;

    move-result-object v22

    goto/16 :goto_189

    :pswitch_24c  #0x2
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v23

    goto/16 :goto_189

    :pswitch_252  #0x1
    invoke-static/range {p0 .. p1}, Lo/d;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/a;

    move-result-object v21

    goto/16 :goto_189

    :pswitch_258  #0x0
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_189

    :cond_25e
    new-instance v6, Ll/n;

    move-object/from16 v17, v6

    move-object/from16 v20, v2

    invoke-direct/range {v17 .. v27}, Ll/n;-><init>(Ljava/lang/String;Lk/b;Ljava/util/List;Lk/a;Lk/d;Lk/b;IIFZ)V

    goto/16 :goto_6b2

    :pswitch_269  #0x9
    sget-object v2, Lo/x;->a:Lp/c$a;

    move-object v14, v6

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move v15, v12

    move/from16 v23, v15

    :goto_27d
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_2da

    sget-object v2, Lo/x;->a:Lp/c$a;

    invoke-virtual {v0, v2}, Lp/c;->m(Lp/c$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_742

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_27d

    :pswitch_293  #0x9
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v23

    goto :goto_27d

    :pswitch_298  #0x8
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v21

    goto :goto_27d

    :pswitch_29d  #0x7
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v19

    goto :goto_27d

    :pswitch_2a2  #0x6
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v22

    goto :goto_27d

    :pswitch_2a7  #0x5
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v20

    goto :goto_27d

    :pswitch_2ac  #0x4
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v18

    goto :goto_27d

    :pswitch_2b1  #0x3
    invoke-static/range {p0 .. p1}, Lo/a;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/l;

    move-result-object v17

    goto :goto_27d

    :pswitch_2b6  #0x2
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v16

    goto :goto_27d

    :pswitch_2bb  #0x1
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    invoke-static {}, Lj/b;->com$airbnb$lottie$model$content$PolystarShape$Type$s$values()[I

    move-result-object v3

    array-length v4, v3

    move v5, v12

    :goto_2c5
    if-ge v5, v4, :cond_2d3

    aget v15, v3, v5

    invoke-static {v15}, Lj/b;->n(I)I

    move-result v6

    if-ne v6, v2, :cond_2d0

    goto :goto_27d

    :cond_2d0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c5

    :cond_2d3
    move v15, v12

    goto :goto_27d

    :pswitch_2d5  #0x0
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_27d

    :cond_2da
    new-instance v1, Ll/h;

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Ll/h;-><init>(Ljava/lang/String;ILk/b;Lk/l;Lk/b;Lk/b;Lk/b;Lk/b;Lk/b;Z)V

    goto/16 :goto_56b

    :pswitch_2e2  #0x8
    sget-object v3, Lo/e0;->a:Lp/c$a;

    move-object v3, v6

    move v4, v12

    :goto_2e6
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v7

    if-eqz v7, :cond_31d

    sget-object v7, Lo/e0;->a:Lp/c$a;

    invoke-virtual {v0, v7}, Lp/c;->m(Lp/c$a;)I

    move-result v7

    if-eqz v7, :cond_318

    if-eq v7, v5, :cond_313

    if-eq v7, v2, :cond_303

    if-eq v7, v10, :cond_2fe

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_2e6

    :cond_2fe
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v4

    goto :goto_2e6

    :cond_303
    new-instance v3, Lk/g;

    invoke-static {}, Lq/j;->c()F

    move-result v7

    sget-object v8, Lo/b0;->a:Lo/b0;

    invoke-static {v0, v1, v7, v8}, Lo/r;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Lk/g;-><init>(Ljava/util/List;)V

    goto :goto_2e6

    :cond_313
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v12

    goto :goto_2e6

    :cond_318
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v6

    goto :goto_2e6

    :cond_31d
    new-instance v1, Ll/m;

    invoke-direct {v1, v6, v12, v3, v4}, Ll/m;-><init>(Ljava/lang/String;ILk/g;Z)V

    goto/16 :goto_56b

    :pswitch_324  #0x7
    sget-object v3, Lo/z;->a:Lp/c$a;

    move-object v14, v6

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move/from16 v18, v12

    :goto_32e
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_361

    sget-object v3, Lo/z;->a:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    if-eqz v3, :cond_35c

    if-eq v3, v5, :cond_357

    if-eq v3, v2, :cond_352

    if-eq v3, v10, :cond_34d

    if-eq v3, v9, :cond_348

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_32e

    :cond_348
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v18

    goto :goto_32e

    :cond_34d
    invoke-static/range {p0 .. p1}, Lo/c;->a(Lp/c;Lcom/airbnb/lottie/d;)Lk/k;

    move-result-object v17

    goto :goto_32e

    :cond_352
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v16

    goto :goto_32e

    :cond_357
    invoke-static {v0, v1, v12}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v15

    goto :goto_32e

    :cond_35c
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_32e

    :cond_361
    new-instance v6, Ll/i;

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Ll/i;-><init>(Ljava/lang/String;Lk/b;Lk/b;Lk/k;Z)V

    goto/16 :goto_6b2

    :pswitch_369  #0x6
    sget-object v3, Lo/y;->a:Lp/c$a;

    move-object v14, v6

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move/from16 v18, v12

    :goto_373
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_3a6

    sget-object v3, Lo/y;->a:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    if-eqz v3, :cond_3a1

    if-eq v3, v5, :cond_39c

    if-eq v3, v2, :cond_397

    if-eq v3, v10, :cond_392

    if-eq v3, v9, :cond_38d

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_373

    :cond_38d
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v18

    goto :goto_373

    :cond_392
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v17

    goto :goto_373

    :cond_397
    invoke-static/range {p0 .. p1}, Lo/d;->f(Lp/c;Lcom/airbnb/lottie/d;)Lk/e;

    move-result-object v16

    goto :goto_373

    :cond_39c
    invoke-static/range {p0 .. p1}, Lo/a;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/l;

    move-result-object v15

    goto :goto_373

    :cond_3a1
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_373

    :cond_3a6
    new-instance v6, Ll/i;

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Ll/i;-><init>(Ljava/lang/String;Lk/l;Lk/e;Lk/b;Z)V

    goto/16 :goto_6b2

    :pswitch_3ae  #0x5
    sget-object v3, Lo/u;->a:Lp/c$a;

    move-object v3, v6

    :goto_3b1
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    if-eqz v4, :cond_3f3

    sget-object v4, Lo/u;->a:Lp/c$a;

    invoke-virtual {v0, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    if-eqz v4, :cond_3ee

    if-eq v4, v5, :cond_3cf

    if-eq v4, v2, :cond_3ca

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_3b1

    :cond_3ca
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v12

    goto :goto_3b1

    :cond_3cf
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    sget-object v4, Ll/g$a;->a:Ll/g$a;

    if-eq v3, v5, :cond_3ec

    if-eq v3, v2, :cond_3e9

    if-eq v3, v10, :cond_3e6

    if-eq v3, v9, :cond_3e3

    if-eq v3, v8, :cond_3e0

    goto :goto_3ec

    :cond_3e0
    sget-object v3, Ll/g$a;->e:Ll/g$a;

    goto :goto_3b1

    :cond_3e3
    sget-object v3, Ll/g$a;->d:Ll/g$a;

    goto :goto_3b1

    :cond_3e6
    sget-object v3, Ll/g$a;->c:Ll/g$a;

    goto :goto_3b1

    :cond_3e9
    sget-object v3, Ll/g$a;->b:Ll/g$a;

    goto :goto_3b1

    :cond_3ec
    :goto_3ec
    move-object v3, v4

    goto :goto_3b1

    :cond_3ee
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v6

    goto :goto_3b1

    :cond_3f3
    new-instance v2, Ll/g;

    invoke-direct {v2, v6, v3, v12}, Ll/g;-><init>(Ljava/lang/String;Ll/g$a;Z)V

    const-string v3, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    move-object v6, v2

    goto/16 :goto_6b2

    :pswitch_400  #0x4
    sget-object v3, Lo/n;->a:Lp/c$a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v6

    move-object/from16 v20, v18

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v29, v24

    move/from16 v19, v12

    move/from16 v25, v19

    move/from16 v26, v25

    move/from16 v30, v26

    move/from16 v27, v16

    :cond_41f
    :goto_41f
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    if-eqz v4, :cond_51d

    sget-object v4, Lo/n;->a:Lp/c$a;

    invoke-virtual {v0, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    packed-switch v4, :pswitch_data_75a

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_41f

    :pswitch_435  #0xb
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :cond_438
    :goto_438
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    if-eqz v4, :cond_482

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move-object v4, v6

    move-object v7, v4

    :goto_443
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v8

    if-eqz v8, :cond_464

    sget-object v8, Lo/n;->c:Lp/c$a;

    invoke-virtual {v0, v8}, Lp/c;->m(Lp/c$a;)I

    move-result v8

    if-eqz v8, :cond_45f

    if-eq v8, v5, :cond_45a

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_443

    :cond_45a
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v4

    goto :goto_443

    :cond_45f
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v7

    goto :goto_443

    :cond_464
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_470

    move-object/from16 v29, v4

    goto :goto_438

    :cond_470
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47c

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_438

    :cond_47c
    iput-boolean v5, v1, Lcom/airbnb/lottie/d;->n:Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_438

    :cond_482
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_41f

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41f

    :pswitch_493  #0xa
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v30

    goto :goto_41f

    :pswitch_498  #0x9
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v7

    double-to-float v4, v7

    move/from16 v27, v4

    goto/16 :goto_41f

    :pswitch_4a1  #0x8
    invoke-static {}, Lj/b;->com$airbnb$lottie$model$content$ShapeStroke$LineJoinType$s$values()[I

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v7

    sub-int/2addr v7, v5

    aget v26, v4, v7

    goto/16 :goto_41f

    :pswitch_4ae  #0x7
    invoke-static {}, Lj/b;->com$airbnb$lottie$model$content$ShapeStroke$LineCapType$s$values()[I

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v7

    sub-int/2addr v7, v5

    aget v25, v4, v7

    goto/16 :goto_41f

    :pswitch_4bb  #0x6
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v24

    goto/16 :goto_41f

    :pswitch_4c1  #0x5
    invoke-static/range {p0 .. p1}, Lo/d;->f(Lp/c;Lcom/airbnb/lottie/d;)Lk/e;

    move-result-object v23

    goto/16 :goto_41f

    :pswitch_4c7  #0x4
    invoke-static/range {p0 .. p1}, Lo/d;->f(Lp/c;Lcom/airbnb/lottie/d;)Lk/e;

    move-result-object v22

    goto/16 :goto_41f

    :pswitch_4cd  #0x3
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v4

    if-ne v4, v5, :cond_4d7

    move/from16 v19, v5

    goto/16 :goto_41f

    :cond_4d7
    move/from16 v19, v2

    goto/16 :goto_41f

    :pswitch_4db  #0x2
    invoke-static/range {p0 .. p1}, Lo/d;->e(Lp/c;Lcom/airbnb/lottie/d;)Lk/d;

    move-result-object v21

    goto/16 :goto_41f

    :pswitch_4e1  #0x1
    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move v4, v11

    :goto_4e5
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v7

    if-eqz v7, :cond_512

    sget-object v7, Lo/n;->b:Lp/c$a;

    invoke-virtual {v0, v7}, Lp/c;->m(Lp/c$a;)I

    move-result v7

    if-eqz v7, :cond_50d

    if-eq v7, v5, :cond_4fc

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_4e5

    :cond_4fc
    new-instance v7, Lk/c;

    new-instance v8, Lo/l;

    invoke-direct {v8, v4}, Lo/l;-><init>(I)V

    invoke-static {v0, v1, v8}, Lo/d;->a(Lp/c;Lcom/airbnb/lottie/d;Lo/h0;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lk/c;-><init>(Ljava/util/List;)V

    move-object/from16 v20, v7

    goto :goto_4e5

    :cond_50d
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v4

    goto :goto_4e5

    :cond_512
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    goto/16 :goto_41f

    :pswitch_517  #0x0
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_41f

    :cond_51d
    new-instance v6, Ll/e;

    move-object/from16 v17, v6

    move-object/from16 v28, v3

    invoke-direct/range {v17 .. v30}, Ll/e;-><init>(Ljava/lang/String;ILk/c;Lk/d;Lk/e;Lk/e;Lk/b;IIFLjava/util/List;Lk/b;Z)V

    goto/16 :goto_6b2

    :pswitch_528  #0x3
    sget-object v3, Lo/d0;->a:Lp/c$a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_52f
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    if-eqz v4, :cond_566

    sget-object v4, Lo/d0;->a:Lp/c$a;

    invoke-virtual {v0, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    if-eqz v4, :cond_561

    if-eq v4, v5, :cond_55c

    if-eq v4, v2, :cond_545

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_52f

    :cond_545
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :cond_548
    :goto_548
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    if-eqz v4, :cond_558

    invoke-static/range {p0 .. p1}, Lo/g;->a(Lp/c;Lcom/airbnb/lottie/d;)Ll/b;

    move-result-object v4

    if-eqz v4, :cond_548

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_548

    :cond_558
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto :goto_52f

    :cond_55c
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v12

    goto :goto_52f

    :cond_561
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v6

    goto :goto_52f

    :cond_566
    new-instance v1, Ll/l;

    invoke-direct {v1, v6, v3, v12}, Ll/l;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    :goto_56b
    move-object v6, v1

    goto/16 :goto_6b2

    :pswitch_56e  #0x2
    sget-object v3, Lo/m;->a:Lp/c$a;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v16, v3

    move-object v14, v6

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move v15, v12

    move/from16 v23, v15

    :goto_580
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_5fc

    sget-object v3, Lo/m;->a:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    packed-switch v3, :pswitch_data_776

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_580

    :pswitch_596  #0x7
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v23

    goto :goto_580

    :pswitch_59b  #0x6
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    if-ne v3, v5, :cond_5a4

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_5a6

    :cond_5a4
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_5a6
    move-object/from16 v16, v3

    goto :goto_580

    :pswitch_5a9  #0x5
    invoke-static/range {p0 .. p1}, Lo/d;->f(Lp/c;Lcom/airbnb/lottie/d;)Lk/e;

    move-result-object v20

    goto :goto_580

    :pswitch_5ae  #0x4
    invoke-static/range {p0 .. p1}, Lo/d;->f(Lp/c;Lcom/airbnb/lottie/d;)Lk/e;

    move-result-object v19

    goto :goto_580

    :pswitch_5b3  #0x3
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    if-ne v3, v5, :cond_5bb

    move v15, v5

    goto :goto_580

    :cond_5bb
    move v15, v2

    goto :goto_580

    :pswitch_5bd  #0x2
    invoke-static/range {p0 .. p1}, Lo/d;->e(Lp/c;Lcom/airbnb/lottie/d;)Lk/d;

    move-result-object v18

    goto :goto_580

    :pswitch_5c2  #0x1
    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move v3, v11

    :goto_5c6
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    if-eqz v4, :cond_5f3

    sget-object v4, Lo/m;->b:Lp/c$a;

    invoke-virtual {v0, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    if-eqz v4, :cond_5ee

    if-eq v4, v5, :cond_5dd

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_5c6

    :cond_5dd
    new-instance v4, Lk/c;

    new-instance v6, Lo/l;

    invoke-direct {v6, v3}, Lo/l;-><init>(I)V

    invoke-static {v0, v1, v6}, Lo/d;->a(Lp/c;Lcom/airbnb/lottie/d;Lo/h0;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Lk/c;-><init>(Ljava/util/List;)V

    move-object/from16 v17, v4

    goto :goto_5c6

    :cond_5ee
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    goto :goto_5c6

    :cond_5f3
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    goto :goto_580

    :pswitch_5f7  #0x0
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_580

    :cond_5fc
    new-instance v6, Ll/d;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v6

    invoke-direct/range {v13 .. v23}, Ll/d;-><init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lk/c;Lk/d;Lk/e;Lk/e;Lk/b;Lk/b;Z)V

    goto/16 :goto_6b2

    :pswitch_608  #0x1
    sget-object v3, Lo/c0;->a:Lp/c$a;

    move v3, v5

    move-object v14, v6

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    move v15, v12

    move/from16 v19, v15

    :goto_613
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v4

    if-eqz v4, :cond_650

    sget-object v4, Lo/c0;->a:Lp/c$a;

    invoke-virtual {v0, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    if-eqz v4, :cond_64b

    if-eq v4, v5, :cond_646

    if-eq v4, v2, :cond_641

    if-eq v4, v10, :cond_63c

    if-eq v4, v9, :cond_637

    if-eq v4, v8, :cond_632

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_613

    :cond_632
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v19

    goto :goto_613

    :cond_637
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    goto :goto_613

    :cond_63c
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v15

    goto :goto_613

    :cond_641
    invoke-static/range {p0 .. p1}, Lo/d;->e(Lp/c;Lcom/airbnb/lottie/d;)Lk/d;

    move-result-object v18

    goto :goto_613

    :cond_646
    invoke-static/range {p0 .. p1}, Lo/d;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/a;

    move-result-object v17

    goto :goto_613

    :cond_64b
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_613

    :cond_650
    if-ne v3, v5, :cond_655

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_657

    :cond_655
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_657
    move-object/from16 v16, v1

    new-instance v6, Ll/k;

    move-object v13, v6

    invoke-direct/range {v13 .. v19}, Ll/k;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lk/a;Lk/d;Z)V

    goto :goto_6b2

    :pswitch_660  #0x0
    sget-object v4, Lo/e;->a:Lp/c$a;

    if-ne v3, v10, :cond_666

    move v3, v5

    goto :goto_667

    :cond_666
    move v3, v12

    :goto_667
    move/from16 v17, v3

    move-object v14, v6

    move-object v15, v14

    move-object/from16 v16, v15

    move/from16 v18, v12

    :goto_66f
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_6ac

    sget-object v3, Lo/e;->a:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    if-eqz v3, :cond_6a7

    if-eq v3, v5, :cond_6a2

    if-eq v3, v2, :cond_69d

    if-eq v3, v10, :cond_698

    if-eq v3, v9, :cond_68c

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_66f

    :cond_68c
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    if-ne v3, v10, :cond_695

    move/from16 v17, v5

    goto :goto_66f

    :cond_695
    move/from16 v17, v12

    goto :goto_66f

    :cond_698
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v18

    goto :goto_66f

    :cond_69d
    invoke-static/range {p0 .. p1}, Lo/d;->f(Lp/c;Lcom/airbnb/lottie/d;)Lk/e;

    move-result-object v16

    goto :goto_66f

    :cond_6a2
    invoke-static/range {p0 .. p1}, Lo/a;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/l;

    move-result-object v15

    goto :goto_66f

    :cond_6a7
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_66f

    :cond_6ac
    new-instance v6, Ll/a;

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Ll/a;-><init>(Ljava/lang/String;Lk/l;Lk/e;ZZ)V

    :goto_6b2
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v1

    if-eqz v1, :cond_6bc

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_6b2

    :cond_6bc
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    return-object v6

    :sswitch_data_6c0
    .sparse-switch
        0xca7 -> :sswitch_db
        0xcc6 -> :sswitch_d0
        0xcdf -> :sswitch_c5
        0xceb -> :sswitch_ba
        0xcec -> :sswitch_af
        0xda0 -> :sswitch_a3
        0xe31 -> :sswitch_97
        0xe3e -> :sswitch_89
        0xe55 -> :sswitch_7a
        0xe5f -> :sswitch_6b
        0xe61 -> :sswitch_5c
        0xe79 -> :sswitch_4d
        0xe7e -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_6f6
    .packed-switch 0x0
        :pswitch_660  #00000000
        :pswitch_608  #00000001
        :pswitch_56e  #00000002
        :pswitch_528  #00000003
        :pswitch_400  #00000004
        :pswitch_3ae  #00000005
        :pswitch_369  #00000006
        :pswitch_324  #00000007
        :pswitch_2e2  #00000008
        :pswitch_269  #00000009
        :pswitch_170  #0000000a
        :pswitch_10f  #0000000b
        :pswitch_109  #0000000c
    .end packed-switch

    :pswitch_data_714
    .packed-switch 0x0
        :pswitch_258  #00000000
        :pswitch_252  #00000001
        :pswitch_24c  #00000002
        :pswitch_246  #00000003
        :pswitch_239  #00000004
        :pswitch_22c  #00000005
        :pswitch_223  #00000006
        :pswitch_21d  #00000007
        :pswitch_19c  #00000008
    .end packed-switch

    :sswitch_data_72a
    .sparse-switch
        0x64 -> :sswitch_1f4
        0x67 -> :sswitch_1e9
        0x6f -> :sswitch_1dd
    .end sparse-switch

    :pswitch_data_738
    .packed-switch 0x0
        :pswitch_205  #00000000
        :pswitch_205  #00000001
        :pswitch_202  #00000002
    .end packed-switch

    :pswitch_data_742
    .packed-switch 0x0
        :pswitch_2d5  #00000000
        :pswitch_2bb  #00000001
        :pswitch_2b6  #00000002
        :pswitch_2b1  #00000003
        :pswitch_2ac  #00000004
        :pswitch_2a7  #00000005
        :pswitch_2a2  #00000006
        :pswitch_29d  #00000007
        :pswitch_298  #00000008
        :pswitch_293  #00000009
    .end packed-switch

    :pswitch_data_75a
    .packed-switch 0x0
        :pswitch_517  #00000000
        :pswitch_4e1  #00000001
        :pswitch_4db  #00000002
        :pswitch_4cd  #00000003
        :pswitch_4c7  #00000004
        :pswitch_4c1  #00000005
        :pswitch_4bb  #00000006
        :pswitch_4ae  #00000007
        :pswitch_4a1  #00000008
        :pswitch_498  #00000009
        :pswitch_493  #0000000a
        :pswitch_435  #0000000b
    .end packed-switch

    :pswitch_data_776
    .packed-switch 0x0
        :pswitch_5f7  #00000000
        :pswitch_5c2  #00000001
        :pswitch_5bd  #00000002
        :pswitch_5b3  #00000003
        :pswitch_5ae  #00000004
        :pswitch_5a9  #00000005
        :pswitch_59b  #00000006
        :pswitch_596  #00000007
    .end packed-switch
.end method
