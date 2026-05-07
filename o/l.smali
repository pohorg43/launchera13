.class public Lo/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/h0<",
        "Ll/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/l;->a:I

    return-void
.end method


# virtual methods
.method public a(Lp/c;F)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lp/c;->k()Lp/c$b;

    move-result-object v2

    sget-object v3, Lp/c$b;->a:Lp/c$b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_13

    move v2, v5

    goto :goto_14

    :cond_13
    move v2, v4

    :goto_14
    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lp/c;->a()V

    :cond_19
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lp/c;->e()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lp/c;->g()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2c
    if-eqz v2, :cond_31

    invoke-virtual/range {p1 .. p1}, Lp/c;->c()V

    :cond_31
    iget v2, v0, Lo/l;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Lo/l;->a:I

    :cond_3e
    iget v2, v0, Lo/l;->a:I

    new-array v3, v2, [F

    new-array v2, v2, [I

    move v6, v4

    move v7, v6

    move v8, v7

    :goto_47
    iget v9, v0, Lo/l;->a:I

    mul-int/lit8 v9, v9, 0x4

    const-wide v10, 0x406fe00000000000L  # 255.0

    const/4 v12, 0x2

    if-ge v6, v9, :cond_83

    div-int/lit8 v9, v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    rem-int/lit8 v15, v6, 0x4

    if-eqz v15, :cond_7d

    if-eq v15, v5, :cond_7a

    if-eq v15, v12, :cond_77

    const/4 v12, 0x3

    if-eq v15, v12, :cond_6c

    goto :goto_80

    :cond_6c
    mul-double/2addr v13, v10

    double-to-int v10, v13

    const/16 v11, 0xff

    invoke-static {v11, v7, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    aput v10, v2, v9

    goto :goto_80

    :cond_77
    mul-double/2addr v13, v10

    double-to-int v8, v13

    goto :goto_80

    :cond_7a
    mul-double/2addr v13, v10

    double-to-int v7, v13

    goto :goto_80

    :cond_7d
    double-to-float v10, v13

    aput v10, v3, v9

    :goto_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_83
    new-instance v0, Ll/c;

    invoke-direct {v0, v3, v2}, Ll/c;-><init>([F[I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v9, :cond_90

    goto/16 :goto_10f

    :cond_90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/2addr v2, v12

    new-array v3, v2, [D

    new-array v6, v2, [D

    move v7, v4

    :goto_9b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v9, v8, :cond_c5

    rem-int/lit8 v8, v9, 0x2

    if-nez v8, :cond_b3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v12, v8

    aput-wide v12, v3, v7

    goto :goto_c2

    :cond_b3
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v12, v8

    aput-wide v12, v6, v7

    add-int/lit8 v7, v7, 0x1

    :goto_c2
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    :cond_c5
    :goto_c5
    iget-object v1, v0, Ll/c;->b:[I

    array-length v7, v1

    if-ge v4, v7, :cond_10f

    aget v1, v1, v4

    iget-object v7, v0, Ll/c;->a:[F

    aget v7, v7, v4

    float-to-double v7, v7

    move v9, v5

    :goto_d2
    if-ge v9, v2, :cond_f2

    add-int/lit8 v12, v9, -0x1

    aget-wide v13, v3, v12

    aget-wide v15, v3, v9

    aget-wide v17, v3, v9

    cmpl-double v17, v17, v7

    if-ltz v17, :cond_ef

    sub-double/2addr v7, v13

    sub-double/2addr v15, v13

    div-double/2addr v7, v15

    aget-wide v12, v6, v12

    aget-wide v14, v6, v9

    sget-object v9, Lq/i;->a:Landroid/graphics/PointF;

    sub-double/2addr v14, v12

    mul-double/2addr v14, v7

    add-double/2addr v14, v12

    mul-double/2addr v14, v10

    double-to-int v7, v14

    goto :goto_f8

    :cond_ef
    add-int/lit8 v9, v9, 0x1

    goto :goto_d2

    :cond_f2
    add-int/lit8 v7, v2, -0x1

    aget-wide v7, v6, v7

    mul-double/2addr v7, v10

    double-to-int v7, v7

    :goto_f8
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v7, v8, v9, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v7, v0, Ll/c;->b:[I

    aput v1, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c5

    :cond_10f
    :goto_10f
    return-object v0
.end method
