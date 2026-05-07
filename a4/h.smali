.class public La4/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lb4/b;

.field public static final b:Lb4/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lb4/c;->a(Ljava/lang/String;)Lb4/b;

    move-result-object v0

    sput-object v0, La4/h;->a:Lb4/b;

    new-instance v0, La4/h$a;

    invoke-direct {v0}, La4/h$a;-><init>()V

    sput-object v0, La4/h;->b:Lb4/b;

    return-void
.end method

.method public static a(Ljava/lang/String;[BII)I
    .registers 5

    :try_start_0
    sget-object v0, La4/h;->a:Lb4/b;

    invoke-static {p0, p1, p2, p3, v0}, La4/h;->b(Ljava/lang/String;[BIILb4/b;)I

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    :try_start_7
    sget-object v0, La4/h;->b:Lb4/b;

    invoke-static {p0, p1, p2, p3, v0}, La4/h;->b(Ljava/lang/String;[BIILb4/b;)I

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;[BIILb4/b;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p4, p0}, Lb4/b;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_1c

    if-lez v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lb4/b;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_8

    :cond_1c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p4

    sub-int/2addr p0, p4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-static {p4, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_30
    if-ge p0, p3, :cond_39

    add-int p4, p2, p0

    aput-byte v3, p1, p4

    add-int/lit8 p0, p0, 0x1

    goto :goto_30

    :cond_39
    add-int/2addr p2, p3

    return p2
.end method

.method public static c(J[BII)V
    .registers 14

    add-int/lit8 v0, p4, -0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/16 v4, 0x30

    if-nez v3, :cond_10

    add-int/lit8 p0, v0, -0x1

    add-int/2addr v0, p3

    aput-byte v4, p2, v0

    goto :goto_2c

    :cond_10
    move-wide v5, p0

    :goto_11
    if-ltz v0, :cond_27

    cmp-long v3, v5, v1

    if-eqz v3, :cond_27

    add-int v3, p3, v0

    const-wide/16 v7, 0x7

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    add-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v3

    const/4 v3, 0x3

    ushr-long/2addr v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_27
    cmp-long v1, v5, v1

    if-nez v1, :cond_36

    move p0, v0

    :goto_2c
    if-ltz p0, :cond_35

    add-int p1, p3, p0

    aput-byte v4, p2, p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_2c

    :cond_35
    return-void

    :cond_36
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " will not fit in octal number buffer of length "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static d([BII)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, La4/h;->a:Lb4/b;

    invoke-static {p0, p1, p2, v0}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    :try_start_7
    sget-object v0, La4/h;->b:Lb4/b;

    invoke-static {p0, p1, p2, v0}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static e([BIILb4/b;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v2, p1

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_e

    aget-byte v3, p0, v2

    if-eqz v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    if-lez v1, :cond_1a

    new-array p2, v1, [B

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p3, p2}, Lb4/b;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, ""

    return-object p0
.end method

.method public static f([BII)J
    .registers 9

    add-int v0, p1, p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_77

    aget-byte v1, p0, p1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_c

    return-wide v2

    :cond_c
    move v1, p1

    :goto_d
    const/16 v4, 0x20

    if-ge v1, v0, :cond_19

    aget-byte v5, p0, v1

    if-eq v5, v4, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    :goto_19
    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    :goto_1d
    if-ge v1, v0, :cond_2a

    if-eqz v5, :cond_23

    if-ne v5, v4, :cond_2a

    :cond_23
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    goto :goto_1d

    :cond_2a
    :goto_2a
    if-ge v1, v0, :cond_76

    aget-byte v4, p0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3f

    const/16 v5, 0x37

    if-gt v4, v5, :cond_3f

    const/4 v5, 0x3

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p0, "\u0000"

    const-string v3, "{NUL}"

    invoke-virtual {v2, p0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Invalid byte "

    const-string v3, " at offset "

    invoke-static {v2, v4, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int/2addr v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' len="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    return-wide v2

    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length "

    const-string v0, " must be at least 2"

    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g([BII)J
    .registers 13

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_b

    invoke-static {p0, p1, p2}, La4/h;->f([BII)J

    move-result-wide p0

    return-wide p0

    :cond_b
    aget-byte v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    const-string v2, " byte binary number exceeds maximum signed long value"

    const-string v4, ", "

    const-string v5, "At offset "

    const/16 v6, 0x9

    if-ge p2, v6, :cond_55

    if-ge p2, v6, :cond_4b

    const-wide/16 v1, 0x0

    move v4, v3

    :goto_24
    if-ge v4, p2, :cond_34

    const/16 v5, 0x8

    shl-long/2addr v1, v5

    add-int v5, p1, v4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_34
    if-eqz v0, :cond_47

    const-wide/16 p0, 0x1

    sub-long/2addr v1, p0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    sub-int/2addr p2, v3

    int-to-double v6, p2

    const-wide/high16 v8, 0x4020000000000000L  # 8.0

    mul-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    sub-long/2addr v3, p0

    xor-long/2addr v1, v3

    :cond_47
    if-eqz v0, :cond_4a

    neg-long v1, v1

    :cond_4a
    return-wide v1

    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v5, p1, v4, p2, v2}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    add-int/lit8 v3, p2, -0x1

    new-array v6, v3, [B

    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v6}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz v0, :cond_73

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    :cond_73
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_83

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    if-eqz v0, :cond_82

    neg-long p0, p0

    :cond_82
    return-wide p0

    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v5, p1, v4, p2, v2}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "La4/g;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    if-eq v6, v7, :cond_181

    const/4 v10, 0x1

    add-int/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    const/16 v11, 0xa

    if-ne v6, v11, :cond_20

    goto/16 :goto_181

    :cond_20
    const/16 v11, 0x20

    if-ne v6, v11, :cond_164

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_29
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v11

    if-eq v11, v7, :cond_15e

    add-int/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_15e

    cmp-long v8, p3, v8

    if-ltz v8, :cond_3f

    int-to-long v12, v2

    cmp-long v9, v12, p3

    if-ltz v9, :cond_3f

    goto/16 :goto_15e

    :cond_3f
    const/16 v9, 0x3d

    if-ne v11, v9, :cond_14e

    const-string v9, "UTF-8"

    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sub-int/2addr v5, v4

    if-gt v5, v10, :cond_51

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15e

    :cond_51
    if-ltz v8, :cond_6a

    int-to-long v8, v5

    int-to-long v12, v2

    sub-long v12, p3, v12

    cmp-long v4, v8, v12

    if-gtz v4, :cond_5c

    goto :goto_6a

    :cond_5c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Paxheader value size "

    const-string v2, " exceeds size of header record"

    invoke-static {v1, v5, v2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-long v8, v5

    const/16 v10, 0x1f58

    int-to-long v12, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v10, v12

    new-array v12, v10, [B

    const-wide/16 v13, 0x0

    :goto_7c
    cmp-long v15, v13, v8

    if-gez v15, :cond_a1

    move-object v15, v1

    sub-long v0, v8, v13

    move-wide/from16 v16, v8

    int-to-long v7, v10

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    move-object/from16 v7, p0

    invoke-virtual {v7, v12, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v8, -0x1

    if-eq v8, v0, :cond_a4

    invoke-virtual {v4, v12, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, v0

    add-long/2addr v13, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move-wide/from16 v8, v16

    const/4 v7, -0x1

    goto :goto_7c

    :cond_a1
    move-object/from16 v7, p0

    move-object v15, v1

    :cond_a4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-ne v1, v5, :cond_140

    add-int/2addr v2, v5

    add-int/lit8 v5, v5, -0x1

    aget-byte v1, v0, v5

    const/16 v4, 0xa

    if-ne v1, v4, :cond_138

    new-instance v1, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v8, 0x0

    invoke-direct {v1, v0, v8, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v15

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GNU.sparse.offset"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    if-eqz v3, :cond_db

    new-instance v4, La4/g;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    invoke-direct {v4, v8, v9, v12, v13}, La4/g;-><init>(JJ)V

    move-object/from16 v8, p1

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_df

    :cond_db
    move-object/from16 v8, p1

    const-wide/16 v12, 0x0

    :goto_df
    :try_start_df
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_df .. :try_end_e3} :catch_f4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-ltz v4, :cond_ec

    goto :goto_fe

    :cond_ec
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read Paxheader.GNU.sparse.offset contains negative value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read Paxheader.GNU.sparse.offset contains a non-numeric value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fc
    move-object/from16 v8, p1

    :goto_fe
    const-string v4, "GNU.sparse.numbytes"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_162

    if-eqz v3, :cond_130

    :try_start_108
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_10c
    .catch Ljava/lang/NumberFormatException; {:try_start_108 .. :try_end_10c} :catch_128

    const-wide/16 v9, 0x0

    cmp-long v1, v4, v9

    if-ltz v1, :cond_120

    new-instance v1, La4/g;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v1, v9, v10, v4, v5}, La4/g;-><init>(JJ)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_162

    :cond_120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read Paxheader.GNU.sparse.numbytes contains negative value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read Paxheader.GNU.sparse.numbytes contains a non-numeric value."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_130
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read Paxheader.GNU.sparse.offset is expected before GNU.sparse.numbytes shows up."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_138
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read Paxheader.Value should end with a newline"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_140
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to read Paxheader. Expected "

    const-string v3, " bytes, read "

    invoke-static {v2, v5, v3, v1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14e
    move-object/from16 v7, p0

    move-object v8, v0

    move-object v0, v1

    int-to-byte v1, v11

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-wide/16 v11, 0x0

    move-object v1, v0

    move-object v0, v8

    move-wide v8, v11

    const/4 v7, -0x1

    goto/16 :goto_29

    :cond_15e
    :goto_15e
    move-object/from16 v7, p0

    move-object v8, v0

    move-object v0, v1

    :cond_162
    :goto_162
    move v6, v11

    goto :goto_185

    :cond_164
    move-object/from16 v7, p0

    move-object v8, v0

    move-object v0, v1

    const/16 v1, 0x30

    if-lt v6, v1, :cond_179

    const/16 v1, 0x39

    if-gt v6, v1, :cond_179

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_d

    :cond_179
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read Paxheader. Encountered a non-number while reading length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_181
    :goto_181
    move-object/from16 v7, p0

    move-object v8, v0

    move-object v0, v1

    :goto_185
    const/4 v1, -0x1

    if-ne v6, v1, :cond_199

    if-eqz v3, :cond_198

    new-instance v1, La4/g;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, La4/g;-><init>(JJ)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_198
    return-object v0

    :cond_199
    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_b
.end method

.method public static i(Ljava/io/InputStream;)[J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0xa

    const-wide/16 v6, 0x1

    if-eq v4, v5, :cond_31

    add-long/2addr v0, v6

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    const/16 v5, 0x30

    if-lt v4, v5, :cond_21

    const/16 v5, 0x39

    if-gt v4, v5, :cond_21

    const-wide/16 v5, 0xa

    mul-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_3

    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupted TAR archive. Non-numeric value in sparse headers block"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected EOF when reading parse information of 1.X PAX format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    add-long/2addr v0, v6

    const/4 p0, 0x2

    new-array p0, p0, [J

    const/4 v4, 0x0

    aput-wide v2, p0, v4

    const/4 v2, 0x1

    aput-wide v0, p0, v2

    return-object p0
.end method

.method public static j([BII)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "La4/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_45

    mul-int/lit8 v2, v1, 0x18

    add-int/2addr v2, p1

    const/16 v3, 0xc

    :try_start_d
    invoke-static {p0, v2, v3}, La4/h;->g([BII)J

    move-result-wide v4

    add-int/lit8 v2, v2, 0xc

    invoke-static {p0, v2, v3}, La4/h;->g([BII)J

    move-result-wide v2

    new-instance v6, La4/g;

    invoke-direct {v6, v4, v5, v2, v3}, La4/g;-><init>(JJ)V

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-ltz v4, :cond_34

    cmp-long v2, v2, v7

    if-ltz v2, :cond_2c

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupted TAR archive, sparse entry with negative numbytes"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupted TAR archive, sparse entry with negative offset"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Corrupted TAR archive, sparse entry is invalid"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
