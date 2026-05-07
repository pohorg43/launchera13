.class public Lq/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(F)F
    .registers 5

    const v0, 0x3d25aee6  # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    const v0, 0x414eb852  # 12.92f

    div-float/2addr p0, v0

    goto :goto_1f

    :cond_c
    const v0, 0x3d6147ae  # 0.055f

    add-float/2addr p0, v0

    const v0, 0x3f870a3d  # 1.055f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x4003333340000000L  # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    :goto_1f
    return p0
.end method

.method public static b(F)F
    .registers 5

    const v0, 0x3b4d2e1c  # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    const v0, 0x414eb852  # 12.92f

    mul-float/2addr p0, v0

    goto :goto_23

    :cond_c
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L  # 0.4166666567325592

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147a0000000L  # 1.0549999475479126

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c0000000L  # 0.054999999701976776

    sub-double/2addr v0, v2

    double-to-float p0, v0

    :goto_23
    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 3

    const-string v0, "4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x647

    if-eqz v0, :cond_b

    goto :goto_36

    :cond_b
    const-string v0, "6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x649

    goto :goto_36

    :cond_16
    const-string v0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v1, 0x64b

    goto :goto_36

    :cond_21
    const-string v0, "7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v1, 0x64a

    goto :goto_36

    :cond_2c
    const-string v0, "5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/16 v1, 0x648

    :cond_36
    :goto_36
    return v1
.end method

.method public static d(Landroid/content/Context;Ll1/a;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p1}, Ll1/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ll1/a;->k()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x11f8

    invoke-static {p0, v2}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v2

    const-string v3, "gb"

    const-string/jumbo v4, "softmarket://market_mainmenu?params="

    const-string v5, "="

    const-string v6, "&"

    const-string v7, "enter_id="

    if-eqz v2, :cond_42

    const-string/jumbo p0, "out_operator#"

    invoke-static {p0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "enter_params"

    invoke-static {v7, v1, v6, p1, v5}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, p0}, Lq/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v6, v3, v5}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    const/16 v2, 0x11c6

    invoke-static {p0, v2}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_61

    const-string/jumbo p0, "out_operator"

    invoke-static {v7, v1, v6, p0, v5}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1}, Lq/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v6, v3, v5}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_61
    const-string p0, ""

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ll1/d;)Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    invoke-virtual/range {p1 .. p1}, Ll1/b;->n()J

    move-result-wide v3

    :try_start_a
    const-string/jumbo v5, "pkg"

    invoke-virtual {v1, v5}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_13
    .catch Li1/m; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-object v5, v2

    :goto_15
    :try_start_15
    const-string v6, "atd"

    invoke-virtual {v1, v6}, Li1/n;->b(Ljava/lang/String;)Z

    move-result v6
    :try_end_1b
    .catch Li1/m; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 v6, 0x0

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Ll1/a;->m()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ll1/a;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ll1/a;->l()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Lq/d;->c(Ljava/lang/String;)I

    move-result v11

    :try_start_37
    const-string v12, "Ext-Module"

    invoke-virtual {v1, v12}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3f
    .catch Li1/m; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-object v1, v2

    :goto_41
    const/16 v12, 0x11f8

    invoke-static {v0, v12}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v12

    const-string v13, "gb"

    const-string/jumbo v14, "softmarket://market_appdetail?params="

    const-string v15, "enter_id"

    move-object/from16 v16, v2

    const-string/jumbo v2, "out_intent_from"

    const-string/jumbo v0, "out_start_download"

    move/from16 v17, v7

    const-string v7, "="

    move-object/from16 p1, v13

    const-string/jumbo v13, "out_package_name"

    move-object/from16 v18, v14

    const-string v14, "&"

    move-object/from16 v19, v8

    const-string/jumbo v8, "out_pid="

    if-eqz v12, :cond_dc

    const-string v12, "Ext-Module#"

    invoke-static {v12, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "out_operator#"

    invoke-static {v12, v9}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v10}, Li1/k;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_80

    move-object/from16 v10, v16

    goto :goto_86

    :cond_80
    const-string v12, "^out_match_type#"

    invoke-static {v12, v10}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v7, v5, v14, v0}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v7, v11, v14, v15}, Lq/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "enter_params"

    move-object/from16 v12, v19

    invoke-static {v10, v7, v12, v14, v0}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpd_params"

    invoke-static {v10, v7, v9, v14, v0}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v2, v0, v14, v1, v7}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_dc
    move-object/from16 v1, p1

    move-object/from16 p1, v0

    move-object/from16 v12, v19

    const/16 v0, 0x11c6

    move-object/from16 v19, v1

    move-object/from16 v20, v10

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-static {v1, v0}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_143

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v5, v14, v10}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v11, v14, v15}, Lq/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "out_operator"

    invoke-static {v0, v7, v12, v14, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "out_match_type"

    invoke-static {v0, v7, v9, v14, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v14, v1, v7}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_143
    return-object v16
.end method

.method public static f(Landroid/content/Context;Ll1/e;)Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    :try_start_6
    const-string v3, "kw"

    invoke-virtual {v1, v3}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_e
    .catch Li1/m; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-object v3, v2

    :goto_10
    :try_start_10
    const-string/jumbo v4, "pkg"

    invoke-virtual {v1, v4}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_19
    .catch Li1/m; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    move-object v4, v2

    :goto_1b
    :try_start_1b
    const-string v5, "ad"

    invoke-virtual {v1, v5}, Li1/n;->b(Ljava/lang/String;)Z

    move-result v5
    :try_end_21
    .catch Li1/m; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    const/4 v5, 0x0

    :goto_23
    invoke-virtual/range {p1 .. p1}, Ll1/a;->m()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ll1/a;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ll1/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lq/d;->c(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x11f8

    invoke-static {v0, v10}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v10

    const-string v11, "gb"

    const-string/jumbo v12, "softmarket://market_search_result?params="

    const-string v13, "enter_id"

    const-string/jumbo v14, "out_intent_from"

    const-string/jumbo v15, "out_start_download"

    move-object/from16 v16, v2

    const-string/jumbo v2, "out_operator"

    const-string v0, "="

    move/from16 v17, v6

    const-string/jumbo v6, "out_app_name"

    move-object/from16 p1, v11

    const-string v11, "&"

    move-object/from16 v18, v12

    const-string/jumbo v12, "out_package_name="

    if-eqz v10, :cond_be

    const-string/jumbo v10, "out_operator#"

    invoke-static {v10, v8}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Li1/k;->a(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_79

    move-object/from16 v19, v7

    move-object/from16 v1, v16

    goto :goto_81

    :cond_79
    move-object/from16 v19, v7

    const-string v7, "^out_match_type#"

    invoke-static {v7, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_81
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v4, v11, v6, v0}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v3, v11, v2, v0}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v8, v11, v15, v0}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v9, v11, v13, v0}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "enter_params"

    move-object/from16 v7, v19

    invoke-static {v4, v7, v11, v2, v0}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lq/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p1

    move-object/from16 v2, v18

    invoke-static {v2, v1, v11, v10, v0}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_be
    move-object/from16 v10, p1

    move-object/from16 p1, v0

    const/16 v0, 0x11c6

    move-object/from16 v19, v10

    move-object/from16 v10, p0

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v20

    invoke-static {v10, v0}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-static {v12, v4, v11, v6, v1}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v11, v2, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v8, v11, v15, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v9, v11, v13, v1}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7, v11, v2, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "out_match_type"

    invoke-static {v0, v8, v11, v2, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lq/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    invoke-static {v3, v0, v11, v2, v1}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10e
    return-object v16
.end method

.method public static final g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lb3/d<",
            "-TT;>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ld3/a;

    if-eqz v0, :cond_18

    check-cast p0, Ld3/a;

    invoke-virtual {p0, p1, p2}, Ld3/a;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    goto :goto_2d

    :cond_18
    invoke-interface {p2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v0

    sget-object v1, Lb3/h;->a:Lb3/h;

    if-ne v0, v1, :cond_27

    new-instance v0, Lc3/b;

    invoke-direct {v0, p2, p0, p1}, Lc3/b;-><init>(Lb3/d;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_2d

    :cond_27
    new-instance v1, Lc3/c;

    invoke-direct {v1, p2, v0, p0, p1}, Lc3/c;-><init>(Lb3/d;Lb3/f;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_2d
    return-object p0
.end method

.method public static final h(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly2/j$a;

    invoke-direct {v0, p0}, Ly2/j$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static i(FII)I
    .registers 10

    if-ne p1, p2, :cond_3

    return p1

    :cond_3
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    shr-int/lit8 v4, p2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v1

    shr-int/lit8 v5, p2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v1

    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v1

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {v2}, Lq/d;->a(F)F

    move-result v2

    invoke-static {v3}, Lq/d;->a(F)F

    move-result v3

    invoke-static {p1}, Lq/d;->a(F)F

    move-result p1

    invoke-static {v5}, Lq/d;->a(F)F

    move-result v5

    invoke-static {v6}, Lq/d;->a(F)F

    move-result v6

    invoke-static {p2}, Lq/d;->a(F)F

    move-result p2

    invoke-static {v4, v0, p0, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    invoke-static {v5, v2, p0, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    invoke-static {v6, v3, p0, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v3

    invoke-static {p2, p1, p0, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    mul-float/2addr v0, v1

    invoke-static {v2}, Lq/d;->b(F)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {v3}, Lq/d;->b(F)F

    move-result p2

    mul-float/2addr p2, v1

    invoke-static {p0}, Lq/d;->b(F)F

    move-result p0

    mul-float/2addr p0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public static j(D)D
    .registers 5

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_7

    goto :goto_10

    :cond_7
    const-wide/high16 v0, 0x4020000000000000L  # 8.0

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4039000000000000L  # 25.0

    add-double/2addr v0, p0

    :goto_10
    return-wide v0
.end method

.method public static final k(Lb3/d;)Lq3/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb3/d<",
            "-TT;>;)",
            "Lq3/l<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lv3/f;

    if-nez v0, :cond_b

    new-instance v0, Lq3/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq3/l;-><init>(Lb3/d;I)V

    return-object v0

    :cond_b
    move-object v0, p0

    check-cast v0, Lv3/f;

    invoke-virtual {v0}, Lv3/f;->i()Lq3/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    :cond_15
    move-object v0, v1

    goto :goto_1d

    :cond_17
    invoke-virtual {v0}, Lq3/l;->B()Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_1d
    if-nez v0, :cond_25

    new-instance v0, Lq3/l;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq3/l;-><init>(Lb3/d;I)V

    :cond_25
    return-object v0
.end method

.method public static final l(Lb3/d;)Lb3/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb3/d<",
            "-TT;>;)",
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ld3/c;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Ld3/c;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ld3/c;->intercepted()Lb3/d;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    move-object p0, v0

    :cond_18
    :goto_18
    return-object p0
.end method

.method public static final m(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static final n(Lq3/p0;Lb3/d;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/p0<",
            "-TT;>;",
            "Lb3/d<",
            "-TT;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lq3/p0;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/p0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, Lq3/p0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    if-eqz p2, :cond_4b

    check-cast p1, Lv3/f;

    iget-object p2, p1, Lv3/f;->e:Lb3/d;

    iget-object v0, p1, Lv3/f;->g:Ljava/lang/Object;

    invoke-interface {p2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v1

    invoke-static {v1, v0}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lv3/a0;->a:Lv3/y;

    if-eq v0, v2, :cond_2c

    invoke-static {p2, v1, v0}, Lq3/z;->d(Lb3/d;Lb3/f;Ljava/lang/Object;)Lq3/f2;

    move-result-object p2

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    :goto_2d
    :try_start_2d
    iget-object p1, p1, Lv3/f;->e:Lb3/d;

    invoke-interface {p1, p0}, Lb3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_3e

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Lq3/f2;->l0()Z

    move-result p0

    if-eqz p0, :cond_4e

    :cond_3a
    invoke-static {v1, v0}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    goto :goto_4e

    :catchall_3e
    move-exception p0

    if-eqz p2, :cond_47

    invoke-virtual {p2}, Lq3/f2;->l0()Z

    move-result p1

    if-eqz p1, :cond_4a

    :cond_47
    invoke-static {v1, v0}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    :cond_4a
    throw p0

    :cond_4b
    invoke-interface {p1, p0}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static o(D)D
    .registers 5

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_7

    goto :goto_16

    :cond_7
    const-wide/high16 v0, 0x403e000000000000L  # 30.0

    sub-double/2addr p0, v0

    const-wide v0, 0x400cf5c28f5c28f6L  # 3.62

    mul-double/2addr p0, v0

    const-wide v0, 0x4068400000000000L  # 194.0

    add-double/2addr v0, p0

    :goto_16
    return-wide v0
.end method

.method public static final p(Ljava/lang/Object;)V
    .registers 2

    instance-of v0, p0, Ly2/j$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p0, Ly2/j$a;

    iget-object p0, p0, Ly2/j$a;->a:Ljava/lang/Throwable;

    throw p0
.end method
