.class public Lo/s;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lp/c$a;

.field public static final b:Lp/c$a;

.field public static final c:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 23

    const-string/jumbo v0, "nm"

    const-string v1, "ind"

    const-string/jumbo v2, "refId"

    const-string/jumbo v3, "ty"

    const-string/jumbo v4, "parent"

    const-string/jumbo v5, "sw"

    const-string/jumbo v6, "sh"

    const-string/jumbo v7, "sc"

    const-string v8, "ks"

    const-string/jumbo v9, "tt"

    const-string/jumbo v10, "masksProperties"

    const-string/jumbo v11, "shapes"

    const-string/jumbo v12, "t"

    const-string v13, "ef"

    const-string/jumbo v14, "sr"

    const-string/jumbo v15, "st"

    const-string/jumbo v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string/jumbo v19, "op"

    const-string/jumbo v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/s;->a:Lp/c$a;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/s;->b:Lp/c$a;

    const-string/jumbo v0, "nm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/s;->c:Lp/c$a;

    return-void
.end method

.method public static a(Lp/c;Lcom/airbnb/lottie/d;)Lm/e;
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v2, 0x0

    const-string v5, "UNSET"

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move/from16 v24, v1

    move/from16 v21, v2

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v26, v23

    move/from16 v27, v26

    move/from16 v32, v27

    move v1, v11

    move/from16 v25, v1

    move-wide/from16 v17, v15

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-wide v14, v13

    move-object v13, v5

    move/from16 v5, v25

    :goto_49
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v33

    if-eqz v33, :cond_39d

    sget-object v11, Lo/s;->a:Lp/c$a;

    invoke-virtual {v0, v11}, Lp/c;->m(Lp/c$a;)I

    move-result v11

    packed-switch v11, :pswitch_data_450

    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto/16 :goto_35e

    :pswitch_65  #0x16
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v32

    goto :goto_79

    :pswitch_6a  #0x15
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v6

    goto :goto_79

    :pswitch_6f  #0x14
    invoke-static {v0, v7, v2}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object v31

    goto :goto_79

    :pswitch_74  #0x13
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v4

    double-to-float v5, v4

    :goto_79
    const/4 v3, 0x1

    goto/16 :goto_399

    :pswitch_7c  #0x12
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v2

    double-to-float v1, v2

    goto :goto_ad

    :pswitch_82  #0x11
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lq/j;->c()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move/from16 v27, v2

    goto :goto_ad

    :pswitch_90  #0x10
    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lq/j;->c()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move/from16 v26, v2

    goto :goto_ad

    :pswitch_9e  #0xf
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v2

    double-to-float v2, v2

    move/from16 v25, v2

    goto :goto_ad

    :pswitch_a6  #0xe
    invoke-virtual/range {p0 .. p0}, Lp/c;->g()D

    move-result-wide v2

    double-to-float v2, v2

    move/from16 v24, v2

    :goto_ad
    move-object/from16 v38, v6

    :goto_af
    const/4 v3, 0x1

    goto/16 :goto_397

    :pswitch_b2  #0xd
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_ba
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    :goto_c3
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_e0

    sget-object v3, Lo/s;->c:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    if-eqz v3, :cond_d8

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_c3

    :cond_d8
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    :cond_e0
    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    goto :goto_ba

    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    move-object/from16 v38, v6

    const/4 v3, 0x0

    goto/16 :goto_1eb

    :pswitch_100  #0xc
    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    :goto_103
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1ca

    sget-object v2, Lo/s;->b:Lp/c$a;

    invoke-virtual {v0, v2}, Lp/c;->m(Lp/c$a;)I

    move-result v2

    if-eqz v2, :cond_1b6

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11b

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_103

    :cond_11b
    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1a5

    sget-object v2, Lo/b;->a:Lp/c$a;

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    const/4 v2, 0x0

    :goto_12a
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_193

    sget-object v3, Lo/b;->a:Lp/c$a;

    invoke-virtual {v0, v3}, Lp/c;->m(Lp/c$a;)I

    move-result v3

    if-eqz v3, :cond_13f

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_12a

    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/16 v37, 0x0

    :goto_147
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v29

    if-eqz v29, :cond_182

    sget-object v4, Lo/b;->b:Lp/c$a;

    invoke-virtual {v0, v4}, Lp/c;->m(Lp/c$a;)I

    move-result v4

    if-eqz v4, :cond_178

    move-object/from16 v38, v6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_172

    const/4 v6, 0x2

    if-eq v4, v6, :cond_16c

    const/4 v6, 0x3

    if-eq v4, v6, :cond_167

    invoke-virtual/range {p0 .. p0}, Lp/c;->n()V

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_17f

    :cond_167
    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v3

    goto :goto_17f

    :cond_16c
    const/4 v6, 0x3

    invoke-static/range {p0 .. p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v2

    goto :goto_17f

    :cond_172
    const/4 v6, 0x3

    invoke-static/range {p0 .. p1}, Lo/d;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/a;

    move-result-object v37

    goto :goto_17f

    :cond_178
    move-object/from16 v38, v6

    const/4 v6, 0x3

    invoke-static/range {p0 .. p1}, Lo/d;->b(Lp/c;Lcom/airbnb/lottie/d;)Lk/a;

    move-result-object v11

    :goto_17f
    move-object/from16 v6, v38

    goto :goto_147

    :cond_182
    move-object/from16 v38, v6

    const/4 v6, 0x3

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    new-instance v4, Lk/j;

    move-object/from16 v6, v37

    invoke-direct {v4, v11, v6, v2, v3}, Lk/j;-><init>(Lk/a;Lk/a;Lk/b;Lk/b;)V

    move-object v2, v4

    move-object/from16 v6, v38

    goto :goto_12a

    :cond_193
    move-object/from16 v38, v6

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    if-nez v2, :cond_1a1

    new-instance v2, Lk/j;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Lk/j;-><init>(Lk/a;Lk/a;Lk/b;Lk/b;)V

    goto :goto_1a2

    :cond_1a1
    const/4 v3, 0x0

    :goto_1a2
    move-object/from16 v29, v2

    goto :goto_1a8

    :cond_1a5
    move-object/from16 v38, v6

    const/4 v3, 0x0

    :goto_1a8
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1b2

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto :goto_1a8

    :cond_1b2
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    goto :goto_1c6

    :cond_1b6
    move-object/from16 v38, v6

    const/4 v3, 0x0

    new-instance v2, Lk/i;

    sget-object v4, Lo/h;->a:Lo/h;

    invoke-static {v0, v7, v4}, Lo/d;->a(Lp/c;Lcom/airbnb/lottie/d;Lo/h0;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Lk/i;-><init>(Ljava/util/List;)V

    move-object/from16 v28, v2

    :goto_1c6
    move-object/from16 v6, v38

    goto/16 :goto_103

    :cond_1ca
    move-object/from16 v38, v6

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    goto/16 :goto_af

    :pswitch_1d2  #0xb
    move-object/from16 v38, v6

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :cond_1d8
    :goto_1d8
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1e8

    invoke-static/range {p0 .. p1}, Lo/g;->a(Lp/c;Lcom/airbnb/lottie/d;)Ll/b;

    move-result-object v2

    if-eqz v2, :cond_1d8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d8

    :cond_1e8
    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    :goto_1eb
    move-wide/from16 v40, v14

    goto/16 :goto_2fb

    :pswitch_1ef  #0xa
    move-object/from16 v38, v6

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lp/c;->a()V

    :goto_1f5
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v2

    if-eqz v2, :cond_2ed

    invoke-virtual/range {p0 .. p0}, Lp/c;->b()V

    move-object v4, v3

    move-object v6, v4

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_202
    invoke-virtual/range {p0 .. p0}, Lp/c;->e()Z

    move-result v34

    if-eqz v34, :cond_2dd

    invoke-virtual/range {p0 .. p0}, Lp/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v37

    const/16 v39, -0x1

    move-wide/from16 v40, v14

    sparse-switch v37, :sswitch_data_482

    :goto_21a
    move/from16 v14, v39

    goto :goto_24b

    :sswitch_21d
    const-string/jumbo v14, "mode"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_227

    goto :goto_249

    :cond_227
    const/4 v14, 0x3

    goto :goto_24b

    :sswitch_229
    const-string v14, "inv"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_232

    goto :goto_249

    :cond_232
    const/4 v14, 0x2

    goto :goto_24b

    :sswitch_234
    const-string/jumbo v14, "pt"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23e

    goto :goto_249

    :cond_23e
    const/4 v14, 0x1

    goto :goto_24b

    :sswitch_240
    const-string/jumbo v14, "o"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24a

    :goto_249
    goto :goto_21a

    :cond_24a
    const/4 v14, 0x0

    :goto_24b
    packed-switch v14, :pswitch_data_494

    invoke-virtual/range {p0 .. p0}, Lp/c;->o()V

    goto/16 :goto_2d6

    :pswitch_253  #0x3
    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_4a0

    goto :goto_293

    :sswitch_262
    const-string/jumbo v14, "s"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26c

    goto :goto_293

    :cond_26c
    const/16 v39, 0x3

    goto :goto_293

    :sswitch_26f
    const-string/jumbo v14, "n"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_279

    goto :goto_293

    :cond_279
    const/16 v39, 0x2

    goto :goto_293

    :sswitch_27c
    const-string v14, "i"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_285

    goto :goto_293

    :cond_285
    const/16 v39, 0x1

    goto :goto_293

    :sswitch_288
    const-string v14, "a"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_291

    goto :goto_293

    :cond_291
    const/16 v39, 0x0

    :goto_293
    packed-switch v39, :pswitch_data_4b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown mask mode "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Defaulting to Add."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lq/f;->a(Ljava/lang/String;)V

    goto :goto_2bb

    :pswitch_2b0  #0x3
    const/4 v3, 0x2

    goto :goto_2d7

    :pswitch_2b2  #0x2
    const/4 v2, 0x4

    goto :goto_2d6

    :pswitch_2b4  #0x1
    const-string v2, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v7, v2}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    const/4 v3, 0x3

    goto :goto_2d7

    :goto_2bb
    :pswitch_2bb  #0x0
    const/4 v2, 0x1

    goto :goto_2d8

    :pswitch_2bd  #0x2
    invoke-virtual/range {p0 .. p0}, Lp/c;->f()Z

    move-result v11

    goto :goto_2d6

    :pswitch_2c2  #0x1
    new-instance v4, Lk/g;

    invoke-static {}, Lq/j;->c()F

    move-result v3

    sget-object v14, Lo/b0;->a:Lo/b0;

    invoke-static {v0, v7, v3, v14}, Lo/r;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Lk/g;-><init>(Ljava/util/List;)V

    goto :goto_2d6

    :pswitch_2d2  #0x0
    invoke-static/range {p0 .. p1}, Lo/d;->e(Lp/c;Lcom/airbnb/lottie/d;)Lk/d;

    move-result-object v6

    :goto_2d6
    move v3, v2

    :goto_2d7
    move v2, v3

    :goto_2d8
    move-wide/from16 v14, v40

    const/4 v3, 0x0

    goto/16 :goto_202

    :cond_2dd
    move-wide/from16 v40, v14

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    new-instance v3, Ll/f;

    invoke-direct {v3, v2, v4, v6, v11}, Ll/f;-><init>(ILk/g;Lk/d;Z)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_1f5

    :cond_2ed
    move-wide/from16 v40, v14

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v7, Lcom/airbnb/lottie/d;->o:I

    add-int/2addr v3, v2

    iput v3, v7, Lcom/airbnb/lottie/d;->o:I

    invoke-virtual/range {p0 .. p0}, Lp/c;->c()V

    :goto_2fb
    const/4 v3, 0x1

    goto :goto_35e

    :pswitch_2fd  #0x9
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    invoke-static {}, Lj/b;->com$airbnb$lottie$model$layer$Layer$MatteType$s$values()[I

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v3

    aget v30, v2, v3

    iget v2, v7, Lcom/airbnb/lottie/d;->o:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Lcom/airbnb/lottie/d;->o:I

    goto :goto_35e

    :pswitch_312  #0x8
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-static/range {p0 .. p1}, Lo/c;->a(Lp/c;Lcom/airbnb/lottie/d;)Lk/k;

    move-result-object v20

    goto/16 :goto_397

    :pswitch_31d  #0x7
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    goto/16 :goto_397

    :pswitch_32c  #0x6
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lq/j;->c()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    move/from16 v22, v2

    goto :goto_397

    :pswitch_33f  #0x5
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lq/j;->c()F

    move-result v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    move/from16 v21, v2

    goto :goto_397

    :pswitch_352  #0x4
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    int-to-long v14, v2

    move-wide/from16 v17, v14

    :goto_35e
    move-wide/from16 v14, v40

    goto :goto_397

    :pswitch_361  #0x3
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    sget-object v4, Lm/e$a;->c:Lm/e$a;

    const/4 v6, 0x6

    if-ge v2, v6, :cond_378

    invoke-static {}, Lm/e$a;->values()[Lm/e$a;

    move-result-object v4

    aget-object v2, v4, v2

    move-object/from16 v16, v2

    goto :goto_35e

    :cond_378
    move-object/from16 v16, v4

    goto :goto_35e

    :pswitch_37b  #0x2
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v19

    goto :goto_397

    :pswitch_385  #0x1
    move-object/from16 v38, v6

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->h()I

    move-result v2

    int-to-long v14, v2

    goto :goto_397

    :pswitch_38e  #0x0
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lp/c;->j()Ljava/lang/String;

    move-result-object v13

    :goto_397
    move-object/from16 v6, v38

    :goto_399
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto/16 :goto_49

    :cond_39d
    move-object/from16 v38, v6

    move-wide/from16 v40, v14

    invoke-virtual/range {p0 .. p0}, Lp/c;->d()V

    div-float v11, v1, v24

    div-float v14, v5, v24

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v11, v0

    if-lez v1, :cond_3cf

    new-instance v6, Lr/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v34

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v36, v8

    move-object/from16 v35, v10

    move-object/from16 v10, v38

    move-object v8, v6

    move-object/from16 v6, v34

    invoke-direct/range {v0 .. v6}, Lr/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d5

    :cond_3cf
    move-object/from16 v36, v8

    move-object/from16 v35, v10

    move-object/from16 v10, v38

    :goto_3d5
    const/4 v0, 0x0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_3db

    goto :goto_3de

    :cond_3db
    iget v0, v7, Lcom/airbnb/lottie/d;->l:F

    move v14, v0

    :goto_3de
    new-instance v8, Lr/a;

    const/16 v33, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lr/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lr/a;

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v8

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v4, v33

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lr/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_418

    const-string v0, "ai"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41d

    :cond_418
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    :cond_41d
    new-instance v33, Lm/e;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v40

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v35

    move-object/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v21, v15

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    move/from16 v22, v30

    move-object/from16 v23, v31

    move/from16 v24, v32

    invoke-direct/range {v0 .. v24}, Lm/e;-><init>(Ljava/util/List;Lcom/airbnb/lottie/d;Ljava/lang/String;JLm/e$a;JLjava/lang/String;Ljava/util/List;Lk/k;IIIFFIILk/i;Lk/j;Ljava/util/List;ILk/b;Z)V

    return-object v33

    :pswitch_data_450
    .packed-switch 0x0
        :pswitch_38e  #00000000
        :pswitch_385  #00000001
        :pswitch_37b  #00000002
        :pswitch_361  #00000003
        :pswitch_352  #00000004
        :pswitch_33f  #00000005
        :pswitch_32c  #00000006
        :pswitch_31d  #00000007
        :pswitch_312  #00000008
        :pswitch_2fd  #00000009
        :pswitch_1ef  #0000000a
        :pswitch_1d2  #0000000b
        :pswitch_100  #0000000c
        :pswitch_b2  #0000000d
        :pswitch_a6  #0000000e
        :pswitch_9e  #0000000f
        :pswitch_90  #00000010
        :pswitch_82  #00000011
        :pswitch_7c  #00000012
        :pswitch_74  #00000013
        :pswitch_6f  #00000014
        :pswitch_6a  #00000015
        :pswitch_65  #00000016
    .end packed-switch

    :sswitch_data_482
    .sparse-switch
        0x6f -> :sswitch_240
        0xe04 -> :sswitch_234
        0x197f1 -> :sswitch_229
        0x3339a3 -> :sswitch_21d
    .end sparse-switch

    :pswitch_data_494
    .packed-switch 0x0
        :pswitch_2d2  #00000000
        :pswitch_2c2  #00000001
        :pswitch_2bd  #00000002
        :pswitch_253  #00000003
    .end packed-switch

    :sswitch_data_4a0
    .sparse-switch
        0x61 -> :sswitch_288
        0x69 -> :sswitch_27c
        0x6e -> :sswitch_26f
        0x73 -> :sswitch_262
    .end sparse-switch

    :pswitch_data_4b2
    .packed-switch 0x0
        :pswitch_2bb  #00000000
        :pswitch_2b4  #00000001
        :pswitch_2b2  #00000002
        :pswitch_2b0  #00000003
    .end packed-switch
.end method
