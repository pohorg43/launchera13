.class public Li1/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li1/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, ""

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_b
    const-string v4, "host"

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_22

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_23

    :cond_1c
    new-instance v0, Li1/m;

    invoke-direct {v0, v4}, Li1/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v0, 0x0

    :goto_23
    check-cast v0, Ljava/lang/String;
    :try_end_25
    .catch Li1/m; {:try_start_b .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    move-object v0, v3

    :goto_27
    const-string v4, "mk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47e

    const/4 v4, 0x0

    :try_start_30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Li1/j;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_56

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_41

    goto :goto_56

    :catch_41
    move-exception v0

    instance-of v0, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v0, :cond_56

    :try_start_46
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Li1/j;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_56

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_56} :catch_56

    :catch_56
    :cond_56
    :goto_56
    const/16 v0, 0x13ec

    if-ge v4, v0, :cond_47e

    new-instance v0, Li1/a;

    invoke-direct {v0, v2}, Li1/a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Li1/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/dt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "1"

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "pkg"

    const-string v8, "out_intent_from"

    const/16 v9, 0x186

    if-eqz v2, :cond_16a

    invoke-virtual {v0}, Li1/n;->d()Ljava/util/Map;

    move-result-object v2

    new-instance v10, Ll1/d;

    invoke-direct {v10, v2}, Ll1/d;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v10}, Lq/d;->e(Landroid/content/Context;Ll1/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Li1/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    goto/16 :goto_47a

    :cond_8a
    invoke-static {v1, v9}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-virtual {v10}, Ll1/b;->n()J

    move-result-wide v11

    :try_start_94
    invoke-virtual {v10, v7}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_9a
    .catch Li1/m; {:try_start_94 .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-object v2, v3

    :goto_9c
    :try_start_9c
    const-string v9, "atd"

    invoke-virtual {v10, v9}, Li1/n;->b(Ljava/lang/String;)Z

    move-result v9
    :try_end_a2
    .catch Li1/m; {:try_start_9c .. :try_end_a2} :catch_a3

    goto :goto_a4

    :catch_a3
    const/4 v9, 0x0

    :goto_a4
    invoke-virtual {v10}, Ll1/a;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v10}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lq/d;->c(Ljava/lang/String;)I

    move-result v10

    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    const-string v15, "extra.key.productdetail_start_with_download"

    const-string v5, "go_back_to_launcher_app"

    if-lez v14, :cond_111

    :try_start_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li1/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "market://ProductDetail?pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Li1/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_47c

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_10f} :catch_47c

    goto/16 :goto_47a

    :cond_111
    invoke-static {v2}, Li1/k;->a(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16a

    :try_start_117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li1/j;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "market://details?packagename="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Li1/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_47c

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_168} :catch_47c

    goto/16 :goto_47a

    :cond_16a
    invoke-virtual {v0}, Li1/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/search"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    invoke-virtual {v0}, Li1/n;->d()Ljava/util/Map;

    move-result-object v2

    new-instance v5, Ll1/e;

    invoke-direct {v5, v2}, Ll1/e;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v5}, Lq/d;->f(Landroid/content/Context;Ll1/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Li1/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18b

    goto/16 :goto_47a

    :cond_18b
    const/16 v2, 0x186

    invoke-static {v1, v2}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1f3

    :try_start_193
    const-string v0, "kw"

    invoke-virtual {v5, v0}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19b
    .catch Li1/m; {:try_start_193 .. :try_end_19b} :catch_19c

    goto :goto_19d

    :catch_19c
    move-object v0, v3

    :goto_19d
    :try_start_19d
    invoke-virtual {v5, v7}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1a3
    .catch Li1/m; {:try_start_19d .. :try_end_1a3} :catch_1a4

    move-object v3, v2

    :catch_1a4
    invoke-virtual {v5}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lq/d;->c(Ljava/lang/String;)I

    move-result v2

    :try_start_1ac
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li1/j;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "market://detail_search?keyword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&packagename="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x14000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Li1/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_47c

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1f1} :catch_47c

    goto/16 :goto_47a

    :cond_1f3
    invoke-virtual {v0}, Li1/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/home"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_236

    invoke-virtual {v0}, Li1/n;->d()Ljava/util/Map;

    move-result-object v2

    new-instance v5, Ll1/a;

    invoke-direct {v5, v2}, Ll1/a;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v5}, Lq/d;->d(Landroid/content/Context;Ll1/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Li1/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_214

    goto/16 :goto_47a

    :cond_214
    const/16 v2, 0x186

    invoke-static {v1, v2}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_236

    :try_start_21c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_47c

    invoke-static/range {p1 .. p1}, Li1/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_47c

    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_234} :catch_47c

    goto/16 :goto_47a

    :cond_236
    invoke-virtual {v0}, Li1/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/predown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "out_match_type"

    const-string v6, "out_operator"

    const-string v9, "enter_params"

    const-string v10, "="

    const-string v11, "&"

    const-string v12, "^out_match_type#"

    const-string v13, "out_operator#"

    const-string v14, "enter_id"

    const/16 v15, 0x11f8

    if-eqz v2, :cond_393

    invoke-virtual {v0}, Li1/n;->d()Ljava/util/Map;

    move-result-object v2

    move-object/from16 p0, v3

    new-instance v3, Ll1/c;

    invoke-direct {v3, v2}, Ll1/c;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v15}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v2

    const-string v15, "out_pid"

    if-eqz v2, :cond_2ec

    move-object/from16 p2, v4

    move-object v2, v5

    invoke-virtual {v3}, Ll1/b;->n()J

    move-result-wide v4

    :try_start_26e
    invoke-virtual {v3, v7}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_274
    .catch Li1/m; {:try_start_26e .. :try_end_274} :catch_27b

    move-object/from16 v22, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    goto :goto_27f

    :catch_27b
    move-object/from16 v16, v0

    move-object/from16 v0, p0

    :goto_27f
    invoke-virtual {v3}, Ll1/c;->o()I

    move-result v17

    move-object/from16 v18, v2

    invoke-virtual {v3}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v6

    invoke-virtual {v3}, Ll1/a;->k()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v7

    invoke-virtual {v3}, Ll1/a;->l()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v3

    invoke-static {v2}, Lq/d;->c(Ljava/lang/String;)I

    move-result v3

    if-nez v17, :cond_2a0

    const/16 v17, 0x0

    goto :goto_2a2

    :cond_2a0
    const/16 v17, 0x1

    :goto_2a2
    move/from16 v1, v17

    invoke-static {v13, v6}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Li1/k;->a(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2b1

    move-object/from16 v7, p0

    goto :goto_2b5

    :cond_2b1
    invoke-static {v12, v7}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2b5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "out_package_name="

    invoke-static {v7, v0, v11, v15, v10}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "out_operator_type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v10, v1, v11, v8}, Lq/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v10, v3, v11, v14}, Lq/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v10, v2, v11, v9}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "softmarket://market_pre_download?params="

    invoke-static {v1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2fa

    :cond_2ec
    move-object/from16 v16, v0

    move-object/from16 v21, v3

    move-object/from16 p2, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v0, p0

    :goto_2fa
    invoke-static {v0}, Li1/k;->a(Ljava/lang/String;)Z

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Li1/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_307

    goto/16 :goto_47a

    :cond_307
    const/16 v0, 0x11c6

    invoke-static {v1, v0}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_38a

    invoke-virtual/range {v21 .. v21}, Ll1/b;->n()J

    move-result-wide v2

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    :try_start_317
    invoke-virtual {v4, v0}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_31d
    .catch Li1/m; {:try_start_317 .. :try_end_31d} :catch_31e

    goto :goto_320

    :catch_31e
    move-object/from16 v0, p0

    :goto_320
    invoke-virtual {v4}, Ll1/c;->o()I

    move-result v5

    invoke-virtual {v4}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ll1/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ll1/a;->l()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v9

    invoke-static {v6}, Lq/d;->c(Ljava/lang/String;)I

    move-result v9

    if-nez v5, :cond_33f

    const-string v5, "Y29tLm9wcG8ubWFya2V0LnNlcnZpY2UucHJlX2Rvd25sb2FkLnN0YXJ0"

    invoke-static {v5}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_345

    :cond_33f
    const-string v5, "Y29tLm9wcG8ubWFya2V0LnNlcnZpY2UucHJlX2Rvd25sb2FkLmNhbmNlbA=="

    invoke-static {v5}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_345
    move-object/from16 v20, v10

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Li1/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "out_package_name"

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v2, v18

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v10, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v10, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_385

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_385

    invoke-virtual {v1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v3, 0x1

    goto :goto_386

    :cond_385
    const/4 v3, 0x0

    :goto_386
    if-eqz v3, :cond_39f

    goto/16 :goto_47a

    :cond_38a
    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object/from16 v2, v18

    move-object/from16 v0, v19

    goto :goto_39f

    :cond_393
    move-object/from16 v16, v0

    move-object/from16 p0, v3

    move-object/from16 p2, v4

    move-object v2, v5

    move-object v0, v6

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    :cond_39f
    :goto_39f
    invoke-virtual/range {v16 .. v16}, Li1/a;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/web"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47c

    invoke-virtual/range {v16 .. v16}, Li1/n;->d()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ll1/g;

    invoke-direct {v4, v3}, Ll1/g;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Ll1/a;->m()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :try_start_3be
    const-string/jumbo v5, "u"

    invoke-virtual {v4, v5}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3d0

    goto :goto_3d7

    :cond_3d0
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3d4
    .catch Li1/m; {:try_start_3be .. :try_end_3d4} :catch_3d5

    goto :goto_3d7

    :catch_3d5
    move-object/from16 v5, p0

    :goto_3d7
    invoke-virtual {v4}, Ll1/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ll1/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ll1/a;->l()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Lq/d;->c(Ljava/lang/String;)I

    move-result v10

    :try_start_3e7
    const-string v15, "Ext-Module"

    invoke-virtual {v4, v15}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_3ef
    .catch Li1/m; {:try_start_3e7 .. :try_end_3ef} :catch_3ef

    :catch_3ef
    const/16 v4, 0x11f8

    invoke-static {v1, v4}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v4

    const-string v15, "gb"

    move-object/from16 v18, v2

    const-string/jumbo v2, "softmarket://market_latestact?params="

    move-object/from16 v19, v0

    const-string/jumbo v0, "url="

    if-eqz v4, :cond_444

    const-string v4, "Ext-Module#"

    invoke-static {v4, v9}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v7}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v9}, Li1/k;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_416

    move-object/from16 v9, p0

    goto :goto_41a

    :cond_416
    invoke-static {v12, v9}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_41a
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v12, v20

    invoke-static {v0, v5, v11, v8, v12}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v14, v12}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    invoke-static {v0, v6, v11, v5, v12}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cpd_params"

    invoke-static {v0, v7, v11, v5, v12}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lq/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v11, v15, v12}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_471

    :cond_444
    move-object/from16 v12, v20

    const/16 v4, 0x11c6

    invoke-static {v1, v4}, Li1/l;->a(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_46f

    invoke-static {v0, v5, v11, v8, v12}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v10, v11, v14, v12}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v19

    invoke-static {v0, v6, v11, v4, v12}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v18

    invoke-static {v0, v7, v11, v4, v12}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v9}, Lq/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v11, v15, v12}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_471

    :cond_46f
    move-object/from16 v3, p0

    :goto_471
    invoke-static {v3}, Li1/k;->a(Ljava/lang/String;)Z

    invoke-static {v1, v3}, Li1/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47c

    :goto_47a
    const/4 v0, 0x1

    goto :goto_47d

    :catch_47c
    :cond_47c
    const/4 v0, 0x0

    :goto_47d
    return v0

    :cond_47e
    new-instance v0, Lcom/cdo/oaps/a;

    invoke-direct {v0}, Lcom/cdo/oaps/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/cdo/oaps/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
