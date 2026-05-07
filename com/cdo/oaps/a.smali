.class public Lcom/cdo/oaps/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li1/f;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Li1/j;->i()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cdo/oaps/a;->a:Ljava/lang/String;

    invoke-static {}, Li1/j;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cdo/oaps/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 22
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

    move-object/from16 v0, p2

    const-string v2, ""

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_b
    const-string v4, "scheme"

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_22

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1c

    goto :goto_23

    :cond_1c
    new-instance v5, Li1/m;

    invoke-direct {v5, v4}, Li1/m;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_22
    const/4 v5, 0x0

    :goto_23
    check-cast v5, Ljava/lang/String;
    :try_end_25
    .catch Li1/m; {:try_start_b .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    move-object v5, v2

    :goto_27
    const-string v4, "oaps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2ad

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ll1/f;

    invoke-direct {v8, v7}, Ll1/f;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "src"

    invoke-virtual {v8, v9, v7}, Li1/n;->e(Ljava/lang/String;Ljava/lang/Object;)Li1/n;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "ts"

    invoke-virtual {v8, v7, v4}, Li1/n;->e(Ljava/lang/String;Ljava/lang/Object;)Li1/n;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_5c
    invoke-virtual {v8, v9}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_62
    .catch Li1/m; {:try_start_5c .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-object v9, v2

    :goto_64
    :try_start_64
    invoke-virtual {v8, v7}, Li1/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_6a
    .catch Li1/m; {:try_start_64 .. :try_end_6a} :catch_6b

    goto :goto_6c

    :catch_6b
    move-object v7, v2

    :goto_6c
    invoke-static {v9, v7}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "UTF-8"

    if-nez v7, :cond_7b

    const/4 v7, 0x0

    move-object/from16 p0, v2

    move-object/from16 v18, v3

    goto/16 :goto_278

    :cond_7b
    const/4 v10, 0x2

    :try_start_7c
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_80
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7c .. :try_end_80} :catch_81

    goto :goto_a3

    :catch_81
    :try_start_81
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    array-length v11, v7

    sub-int/2addr v11, v10

    new-array v12, v11, [B

    invoke-static {v7, v10, v12, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_9f} :catch_a1

    move-object v7, v12

    goto :goto_a3

    :catch_a1
    new-array v7, v5, [B

    :goto_a3
    new-instance v10, Li1/u;

    invoke-direct {v10}, Li1/u;-><init>()V

    const-string v11, "7U727ALEWH8"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Li1/c;->a([B)[B

    move-result-object v11

    invoke-static {v11}, Li1/c;->a([B)[B

    move-result-object v11

    array-length v12, v7

    const/16 v13, 0x8

    if-nez v11, :cond_bd

    goto/16 :goto_17e

    :cond_bd
    new-array v14, v13, [B

    iput-object v14, v10, Li1/u;->h:[B

    new-array v15, v13, [B

    iput-object v15, v10, Li1/u;->j:[B

    iput v6, v10, Li1/u;->i:I

    iput v5, v10, Li1/u;->g:I

    iput v5, v10, Li1/u;->c:I

    iput v5, v10, Li1/u;->b:I

    iput-object v11, v10, Li1/u;->e:[B

    iput-boolean v6, v10, Li1/u;->d:Z

    add-int/lit8 v11, v12, 0xa

    rem-int/2addr v11, v13

    iput v11, v10, Li1/u;->i:I

    if-eqz v11, :cond_dc

    rsub-int/lit8 v11, v11, 0x8

    iput v11, v10, Li1/u;->i:I

    :cond_dc
    iget v11, v10, Li1/u;->i:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0xa

    new-array v11, v11, [B

    iput-object v11, v10, Li1/u;->f:[B

    invoke-virtual {v10}, Li1/u;->d()I

    move-result v11

    and-int/lit16 v11, v11, 0xf8

    iget v15, v10, Li1/u;->i:I

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v14, v5

    move v11, v6

    :goto_f2
    iget v14, v10, Li1/u;->i:I

    if-gt v11, v14, :cond_104

    iget-object v14, v10, Li1/u;->h:[B

    invoke-virtual {v10}, Li1/u;->d()I

    move-result v15

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_f2

    :cond_104
    add-int/2addr v14, v6

    iput v14, v10, Li1/u;->i:I

    move v11, v5

    :goto_108
    if-ge v11, v13, :cond_111

    iget-object v14, v10, Li1/u;->j:[B

    aput-byte v5, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_108

    :cond_111
    iput v6, v10, Li1/u;->g:I

    :cond_113
    :goto_113
    iget v11, v10, Li1/u;->g:I

    const/4 v14, 0x2

    if-gt v11, v14, :cond_138

    iget v11, v10, Li1/u;->i:I

    if-ge v11, v13, :cond_130

    iget-object v14, v10, Li1/u;->h:[B

    add-int/lit8 v15, v11, 0x1

    iput v15, v10, Li1/u;->i:I

    invoke-virtual {v10}, Li1/u;->d()I

    move-result v15

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v11

    iget v11, v10, Li1/u;->g:I

    add-int/2addr v11, v6

    iput v11, v10, Li1/u;->g:I

    :cond_130
    iget v11, v10, Li1/u;->i:I

    if-ne v11, v13, :cond_113

    invoke-virtual {v10}, Li1/u;->b()V

    goto :goto_113

    :cond_138
    :goto_138
    if-lez v12, :cond_155

    iget v11, v10, Li1/u;->i:I

    if-ge v11, v13, :cond_14d

    iget-object v14, v10, Li1/u;->h:[B

    add-int/lit8 v15, v11, 0x1

    iput v15, v10, Li1/u;->i:I

    add-int/lit8 v15, v5, 0x1

    aget-byte v5, v7, v5

    aput-byte v5, v14, v11

    add-int/lit8 v12, v12, -0x1

    move v5, v15

    :cond_14d
    iget v11, v10, Li1/u;->i:I

    if-ne v11, v13, :cond_138

    invoke-virtual {v10}, Li1/u;->b()V

    goto :goto_138

    :cond_155
    iput v6, v10, Li1/u;->g:I

    :cond_157
    :goto_157
    iget v5, v10, Li1/u;->g:I

    const/4 v6, 0x7

    if-gt v5, v6, :cond_175

    iget v6, v10, Li1/u;->i:I

    if-ge v6, v13, :cond_16d

    iget-object v7, v10, Li1/u;->h:[B

    add-int/lit8 v11, v6, 0x1

    iput v11, v10, Li1/u;->i:I

    const/4 v11, 0x0

    aput-byte v11, v7, v6

    add-int/lit8 v5, v5, 0x1

    iput v5, v10, Li1/u;->g:I

    :cond_16d
    iget v5, v10, Li1/u;->i:I

    if-ne v5, v13, :cond_157

    invoke-virtual {v10}, Li1/u;->b()V

    goto :goto_157

    :cond_175
    iget-object v5, v10, Li1/u;->f:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, [B

    :goto_17e
    sget-object v5, Li1/b;->a:[B

    array-length v5, v7

    mul-int/2addr v5, v13

    rem-int/lit8 v6, v5, 0x18

    div-int/lit8 v5, v5, 0x18

    if-eqz v6, :cond_18d

    add-int/lit8 v10, v5, 0x1

    mul-int/lit8 v10, v10, 0x4

    goto :goto_18f

    :cond_18d
    mul-int/lit8 v10, v5, 0x4

    :goto_18f
    new-array v11, v10, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_193
    if-ge v12, v5, :cond_1f8

    mul-int/lit8 v14, v12, 0x3

    aget-byte v15, v7, v14

    add-int/lit8 v16, v14, 0x1

    aget-byte v16, v7, v16

    add-int/lit8 v14, v14, 0x2

    aget-byte v14, v7, v14

    move-object/from16 p0, v2

    and-int/lit8 v2, v16, 0xf

    int-to-byte v2, v2

    move/from16 v17, v5

    and-int/lit8 v5, v15, 0x3

    int-to-byte v5, v5

    and-int/lit8 v18, v15, -0x80

    shr-int/lit8 v15, v15, 0x2

    if-nez v18, :cond_1b2

    goto :goto_1b4

    :cond_1b2
    xor-int/lit16 v15, v15, 0xc0

    :goto_1b4
    int-to-byte v15, v15

    and-int/lit8 v18, v16, -0x80

    shr-int/lit8 v1, v16, 0x4

    if-nez v18, :cond_1bc

    goto :goto_1be

    :cond_1bc
    xor-int/lit16 v1, v1, 0xf0

    :goto_1be
    int-to-byte v1, v1

    and-int/lit8 v16, v14, -0x80

    move-object/from16 v18, v3

    shr-int/lit8 v3, v14, 0x6

    if-nez v16, :cond_1c8

    goto :goto_1ca

    :cond_1c8
    xor-int/lit16 v3, v3, 0xfc

    :goto_1ca
    int-to-byte v3, v3

    sget-object v16, Li1/b;->c:[B

    aget-byte v15, v16, v15

    aput-byte v15, v11, v13

    add-int/lit8 v15, v13, 0x1

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    aget-byte v1, v16, v1

    aput-byte v1, v11, v15

    add-int/lit8 v1, v13, 0x2

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v3

    aget-byte v2, v16, v2

    aput-byte v2, v11, v1

    add-int/lit8 v1, v13, 0x3

    and-int/lit8 v2, v14, 0x3f

    aget-byte v2, v16, v2

    aput-byte v2, v11, v1

    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move/from16 v5, v17

    move-object/from16 v3, v18

    goto :goto_193

    :cond_1f8
    move-object/from16 p0, v2

    move-object/from16 v18, v3

    mul-int/lit8 v12, v12, 0x3

    const/16 v1, 0x3d

    const/16 v2, 0x8

    if-ne v6, v2, :cond_22a

    aget-byte v2, v7, v12

    and-int/lit8 v3, v2, 0x3

    int-to-byte v3, v3

    and-int/lit8 v5, v2, -0x80

    shr-int/lit8 v2, v2, 0x2

    if-nez v5, :cond_210

    goto :goto_212

    :cond_210
    xor-int/lit16 v2, v2, 0xc0

    :goto_212
    int-to-byte v2, v2

    sget-object v5, Li1/b;->c:[B

    aget-byte v2, v5, v2

    aput-byte v2, v11, v13

    add-int/lit8 v2, v13, 0x1

    shl-int/lit8 v3, v3, 0x4

    aget-byte v3, v5, v3

    aput-byte v3, v11, v2

    add-int/lit8 v2, v13, 0x2

    aput-byte v1, v11, v2

    add-int/lit8 v13, v13, 0x3

    aput-byte v1, v11, v13

    goto :goto_26b

    :cond_22a
    const/16 v2, 0x10

    if-ne v6, v2, :cond_26b

    aget-byte v2, v7, v12

    const/4 v3, 0x1

    add-int/2addr v12, v3

    aget-byte v5, v7, v12

    and-int/lit8 v6, v5, 0xf

    int-to-byte v6, v6

    and-int/lit8 v7, v2, 0x3

    int-to-byte v7, v7

    and-int/lit8 v12, v2, -0x80

    shr-int/lit8 v2, v2, 0x2

    if-nez v12, :cond_241

    goto :goto_243

    :cond_241
    xor-int/lit16 v2, v2, 0xc0

    :goto_243
    int-to-byte v2, v2

    and-int/lit8 v12, v5, -0x80

    shr-int/lit8 v5, v5, 0x4

    if-nez v12, :cond_24b

    goto :goto_24d

    :cond_24b
    xor-int/lit16 v5, v5, 0xf0

    :goto_24d
    int-to-byte v5, v5

    sget-object v12, Li1/b;->c:[B

    aget-byte v2, v12, v2

    aput-byte v2, v11, v13

    add-int/lit8 v2, v13, 0x1

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v5, v7

    aget-byte v5, v12, v5

    aput-byte v5, v11, v2

    add-int/lit8 v2, v13, 0x2

    shl-int/lit8 v5, v6, 0x2

    aget-byte v5, v12, v5

    aput-byte v5, v11, v2

    add-int/lit8 v13, v13, 0x3

    aput-byte v1, v11, v13

    move v6, v3

    goto :goto_26d

    :cond_26b
    :goto_26b
    const/4 v1, 0x1

    move v6, v1

    :goto_26d
    :try_start_26d
    new-instance v7, Ljava/lang/String;
    :try_end_26f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26d .. :try_end_26f} :catch_274

    const/4 v5, 0x0

    :try_start_270
    invoke-direct {v7, v11, v5, v10, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_273
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_270 .. :try_end_273} :catch_276

    goto :goto_278

    :catch_274
    const/4 v1, 0x0

    move v5, v1

    :catch_276
    move-object/from16 v7, p0

    :goto_278
    const-string v1, "ck"

    invoke-virtual {v8, v1, v7}, Li1/n;->e(Ljava/lang/String;Ljava/lang/Object;)Li1/n;

    invoke-virtual {v8}, Li1/n;->d()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28b
    :goto_28b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_28b

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28b

    :cond_2ad
    move-object/from16 p0, v2

    move-object/from16 v18, v3

    :cond_2b1
    new-instance v1, Li1/a;

    invoke-direct {v1, v0}, Li1/a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Li1/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35a

    invoke-virtual {v1}, Li1/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35a

    invoke-virtual {v1}, Li1/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Li1/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Li1/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Li1/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Li1/n;->d()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_355

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_355

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_32b

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34f

    :try_start_33f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_34a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33f .. :try_end_34a} :catch_34b

    goto :goto_351

    :catch_34b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_34f
    move-object/from16 v0, p0

    :goto_351
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30c

    :cond_355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35c

    :cond_35a
    move-object/from16 v0, p0

    :goto_35c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_360
    const-string v1, "host"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_377

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_371

    goto :goto_378

    :cond_371
    new-instance v2, Li1/m;

    invoke-direct {v2, v1}, Li1/m;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_377
    const/4 v2, 0x0

    :goto_378
    check-cast v2, Ljava/lang/String;
    :try_end_37a
    .catch Li1/m; {:try_start_360 .. :try_end_37a} :catch_37b

    goto :goto_37d

    :catch_37b
    move-object/from16 v2, p0

    :goto_37d
    const-string v1, "gc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38a

    sget-object v1, Lcom/cdo/oaps/a;->a:Ljava/lang/String;

    move-object/from16 v3, p1

    goto :goto_3b2

    :cond_38a
    const-string v1, "mk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a2

    sget-object v1, Lcom/cdo/oaps/a;->b:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Li1/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39d

    goto :goto_3b2

    :cond_39d
    invoke-static {}, Li1/j;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b2

    :cond_3a2
    move-object/from16 v3, p1

    const-string v1, "mk_op"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b1

    invoke-static {}, Li1/j;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b2

    :cond_3b1
    const/4 v1, 0x0

    :goto_3b2
    :try_start_3b2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "Y29tLm9wcG8ubWFpbi5BQ1RJT05fTEFVTkNI"

    invoke-static {v4}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "b3Bwby9sYXVuY2g="

    invoke-static {v4}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_42c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3df
    :goto_3df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3fc

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_417

    goto :goto_3df

    :cond_3fc
    sget-object v8, Lcom/cdo/oaps/a;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3df

    invoke-static {}, Li1/j;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3df

    sget-object v8, Lcom/cdo/oaps/a;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_417

    goto :goto_3df

    :cond_417
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_42b
    .catchall {:try_start_3b2 .. :try_end_42b} :catchall_42c

    move v5, v6

    :catchall_42c
    :cond_42c
    return v5
.end method
