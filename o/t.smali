.class public Lo/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lp/c$a;

.field public static b:Lp/c$a;

.field public static final c:Lp/c$a;

.field public static final d:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    const-string/jumbo v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string/jumbo v3, "op"

    const-string v4, "fr"

    const-string/jumbo v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    const-string v9, "chars"

    const-string/jumbo v10, "markers"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/t;->a:Lp/c$a;

    const-string v1, "id"

    const-string v2, "layers"

    const-string/jumbo v3, "w"

    const-string v4, "h"

    const-string/jumbo v5, "p"

    const-string/jumbo v6, "u"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/t;->b:Lp/c$a;

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/t;->c:Lp/c$a;

    const-string v0, "cm"

    const-string/jumbo v1, "tm"

    const-string v2, "dr"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/t;->d:Lp/c$a;

    return-void
.end method

.method public static a(Lp/c;)Lcom/airbnb/lottie/d;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lq/j;->c()F

    move-result v1

    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    new-instance v9, Lcom/airbnb/lottie/d;

    invoke-direct {v9}, Lcom/airbnb/lottie/d;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_36
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v16

    if-eqz v16, :cond_395

    sget-object v11, Lo/t;->a:Lp/c$a;

    invoke-virtual {v0, v11}, Lp/c;->m(Lp/c$a;)I

    move-result v11

    move/from16 v17, v10

    const/16 v19, 0x0

    packed-switch v11, :pswitch_data_3cc

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto/16 :goto_38c

    :pswitch_59  #0xa
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_5c
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v11

    if-eqz v11, :cond_c0

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move-object/from16 v11, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_6b
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v18

    if-eqz v18, :cond_a7

    sget-object v10, Lo/t;->d:Lp/c$a;

    invoke-virtual {v0, v10}, Lp/c;->m(Lp/c$a;)I

    move-result v10

    if-eqz v10, :cond_9f

    move/from16 v22, v15

    const/4 v15, 0x1

    if-eq v10, v15, :cond_93

    const/4 v15, 0x2

    if-eq v10, v15, :cond_8a

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    move/from16 v15, v22

    goto :goto_6b

    :cond_8a
    move v10, v14

    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v14

    double-to-float v14, v14

    move/from16 v21, v14

    goto :goto_9b

    :cond_93
    move v10, v14

    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v14

    double-to-float v14, v14

    move/from16 v20, v14

    :goto_9b
    move/from16 v15, v22

    move v14, v10

    goto :goto_6b

    :cond_9f
    move v10, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v11

    goto :goto_6b

    :cond_a7
    move v10, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    new-instance v14, Lj/i;

    move/from16 v15, v20

    move/from16 v20, v10

    move/from16 v10, v21

    invoke-direct {v14, v11, v15, v10}, Lj/i;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v20

    move/from16 v15, v22

    goto :goto_5c

    :cond_c0
    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto/16 :goto_179

    :pswitch_c9  #0x9
    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_d0
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v10

    if-eqz v10, :cond_176

    sget-object v10, Lo/j;->a:Lp/c$a;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    const-wide/16 v14, 0x0

    move-wide/from16 v26, v14

    move-wide/from16 v28, v26

    move-object/from16 v30, v19

    move-object/from16 v31, v30

    const/16 v25, 0x0

    :goto_ec
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v11

    if-eqz v11, :cond_161

    sget-object v11, Lo/j;->a:Lp/c$a;

    invoke-virtual {v0, v11}, Lp/c;->m(Lp/c$a;)I

    move-result v11

    if-eqz v11, :cond_157

    const/4 v14, 0x1

    if-eq v11, v14, :cond_152

    const/4 v14, 0x2

    if-eq v11, v14, :cond_14d

    const/4 v14, 0x3

    if-eq v11, v14, :cond_148

    const/4 v14, 0x4

    if-eq v11, v14, :cond_143

    const/4 v14, 0x5

    if-eq v11, v14, :cond_110

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_ec

    :cond_110
    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    :goto_113
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v11

    if-eqz v11, :cond_13f

    sget-object v11, Lo/j;->b:Lp/c$a;

    invoke-virtual {v0, v11}, Lp/c;->m(Lp/c$a;)I

    move-result v11

    if-eqz v11, :cond_128

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_113

    :cond_128
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_12b
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v11

    if-eqz v11, :cond_13b

    invoke-static {v0, v9}, Lo/g;->a(Lp/c;Lcom/airbnb/lottie/d;)Ll/b;

    move-result-object v11

    check-cast v11, Ll/l;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12b

    :cond_13b
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto :goto_113

    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    goto :goto_ec

    :cond_143
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v31

    goto :goto_ec

    :cond_148
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v30

    goto :goto_ec

    :cond_14d
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v28

    goto :goto_ec

    :cond_152
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v26

    goto :goto_ec

    :cond_157
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v25

    goto :goto_ec

    :cond_161
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    new-instance v11, Lj/e;

    move-object/from16 v23, v11

    move-object/from16 v24, v10

    invoke-direct/range {v23 .. v31}, Lj/e;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lj/e;->hashCode()I

    move-result v10

    invoke-virtual {v8, v10, v11}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_d0

    :cond_176
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    :goto_179
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    goto/16 :goto_38c

    :pswitch_17f  #0x8
    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    :goto_186
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v10

    if-eqz v10, :cond_208

    sget-object v10, Lo/t;->c:Lp/c$a;

    invoke-virtual {v0, v10}, Lp/c;->m(Lp/c$a;)I

    move-result v10

    if-eqz v10, :cond_19b

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_186

    :cond_19b
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_19e
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v10

    if-eqz v10, :cond_1ff

    sget-object v10, Lo/k;->a:Lp/c$a;

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move-object/from16 v10, v19

    move-object v11, v10

    move-object v14, v11

    const/4 v15, 0x0

    :goto_1ae
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v18

    if-eqz v18, :cond_1ed

    move-object/from16 v21, v7

    sget-object v7, Lo/k;->a:Lp/c$a;

    invoke-virtual {v0, v7}, Lp/c;->m(Lp/c$a;)I

    move-result v7

    if-eqz v7, :cond_1e4

    move-object/from16 v23, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1db

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1d6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1d0

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_1df

    :cond_1d0
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v7

    double-to-float v15, v7

    goto :goto_1df

    :cond_1d6
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v14

    goto :goto_1df

    :cond_1db
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v11

    :goto_1df
    move-object/from16 v7, v21

    move-object/from16 v8, v23

    goto :goto_1ae

    :cond_1e4
    move-object/from16 v23, v8

    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, v21

    goto :goto_1ae

    :cond_1ed
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    new-instance v7, Lj/d;

    invoke-direct {v7, v10, v11, v14, v15}, Lj/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v6, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v21

    goto :goto_19e

    :cond_1ff
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto/16 :goto_186

    :cond_208
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    goto/16 :goto_38c

    :pswitch_211  #0x7
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_21c
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v7

    if-eqz v7, :cond_2b0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move-object/from16 v10, v19

    move-object/from16 v28, v10

    move-object/from16 v29, v28

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_239
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v11

    if-eqz v11, :cond_298

    sget-object v11, Lo/t;->b:Lp/c$a;

    invoke-virtual {v0, v11}, Lp/c;->m(Lp/c$a;)I

    move-result v11

    if-eqz v11, :cond_293

    const/4 v14, 0x1

    if-eq v11, v14, :cond_275

    const/4 v14, 0x2

    if-eq v11, v14, :cond_26e

    const/4 v14, 0x3

    if-eq v11, v14, :cond_268

    const/4 v15, 0x4

    if-eq v11, v15, :cond_262

    const/4 v15, 0x5

    if-eq v11, v15, :cond_25d

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_239

    :cond_25d
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v29

    goto :goto_239

    :cond_262
    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v28

    goto :goto_239

    :cond_268
    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v26

    goto :goto_239

    :cond_26e
    const/4 v14, 0x3

    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v25

    goto :goto_239

    :cond_275
    const/4 v14, 0x3

    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_27a
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v11

    if-eqz v11, :cond_28f

    invoke-static {v0, v9}, Lo/s;->a(Lp/c;Lcom/airbnb/lottie/d;)Lm/e;

    move-result-object v11

    iget-wide v14, v11, Lm/e;->d:J

    invoke-virtual {v8, v14, v15, v11}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x3

    const/4 v15, 0x5

    goto :goto_27a

    :cond_28f
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto :goto_239

    :cond_293
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v10

    goto :goto_239

    :cond_298
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    if-eqz v28, :cond_2ab

    new-instance v7, Lcom/airbnb/lottie/k;

    move-object/from16 v24, v7

    move-object/from16 v27, v10

    invoke-direct/range {v24 .. v29}, Lcom/airbnb/lottie/k;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21c

    :cond_2ab
    invoke-virtual {v4, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21c

    :cond_2b0
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto/16 :goto_38c

    :pswitch_2b5  #0x6
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    const/4 v7, 0x0

    :cond_2c1
    :goto_2c1
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v8

    if-eqz v8, :cond_2f8

    invoke-static {v0, v9}, Lo/s;->a(Lp/c;Lcom/airbnb/lottie/d;)Lm/e;

    move-result-object v8

    iget-object v10, v8, Lm/e;->e:Lm/e$a;

    sget-object v11, Lm/e$a;->b:Lm/e$a;

    if-ne v10, v11, :cond_2d3

    add-int/lit8 v7, v7, 0x1

    :cond_2d3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v10, v8, Lm/e;->d:J

    invoke-virtual {v2, v10, v11, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v8, 0x4

    if-le v7, v8, :cond_2c1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "You have "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lq/f;->a(Ljava/lang/String;)V

    goto :goto_2c1

    :cond_2f8
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto/16 :goto_38c

    :pswitch_2fd  #0x5
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v10, v7, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    aget-object v11, v7, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v14, 0x2

    aget-object v7, v7, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v14, 0x4

    if-ge v8, v14, :cond_328

    goto :goto_334

    :cond_328
    if-le v8, v14, :cond_32b

    goto :goto_335

    :cond_32b
    if-ge v11, v14, :cond_32e

    goto :goto_334

    :cond_32e
    if-le v11, v14, :cond_331

    goto :goto_335

    :cond_331
    if-ltz v7, :cond_334

    goto :goto_335

    :cond_334
    :goto_334
    const/4 v10, 0x0

    :goto_335
    if-nez v10, :cond_38c

    const-string v7, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v9, v7}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    goto :goto_38c

    :pswitch_33d  #0x4
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v7

    double-to-float v10, v7

    goto :goto_369

    :pswitch_34b  #0x3
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3c23d70a  # 0.01f

    sub-float v15, v7, v8

    goto :goto_367

    :pswitch_35c  #0x2
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v7

    double-to-float v14, v7

    :goto_367
    move/from16 v10, v17

    :goto_369
    move-object/from16 v7, v21

    :goto_36b
    move-object/from16 v8, v23

    goto/16 :goto_36

    :pswitch_36f  #0x1
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v13

    goto :goto_388

    :pswitch_37c  #0x0
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v14

    move/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v12

    :goto_388
    move/from16 v10, v17

    goto/16 :goto_36

    :cond_38c
    :goto_38c
    move/from16 v10, v17

    move/from16 v14, v20

    move-object/from16 v7, v21

    move/from16 v15, v22

    goto :goto_36b

    :cond_395
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v17, v10

    move/from16 v20, v14

    move/from16 v22, v15

    int-to-float v0, v12

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v7, v13

    mul-float/2addr v7, v1

    float-to-int v1, v7

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v9, Lcom/airbnb/lottie/d;->j:Landroid/graphics/Rect;

    move/from16 v10, v20

    iput v10, v9, Lcom/airbnb/lottie/d;->k:F

    move/from16 v15, v22

    iput v15, v9, Lcom/airbnb/lottie/d;->l:F

    move/from16 v10, v17

    iput v10, v9, Lcom/airbnb/lottie/d;->m:F

    iput-object v3, v9, Lcom/airbnb/lottie/d;->i:Ljava/util/List;

    iput-object v2, v9, Lcom/airbnb/lottie/d;->h:Landroidx/collection/LongSparseArray;

    iput-object v4, v9, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    iput-object v5, v9, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/airbnb/lottie/d;->g:Landroidx/collection/SparseArrayCompat;

    iput-object v6, v9, Lcom/airbnb/lottie/d;->e:Ljava/util/Map;

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/airbnb/lottie/d;->f:Ljava/util/List;

    return-object v9

    :pswitch_data_3cc
    .packed-switch 0x0
        :pswitch_37c  #00000000
        :pswitch_36f  #00000001
        :pswitch_35c  #00000002
        :pswitch_34b  #00000003
        :pswitch_33d  #00000004
        :pswitch_2fd  #00000005
        :pswitch_2b5  #00000006
        :pswitch_211  #00000007
        :pswitch_17f  #00000008
        :pswitch_c9  #00000009
        :pswitch_59  #0000000a
    .end packed-switch
.end method
