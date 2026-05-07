.class public La4/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz3/a;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Z

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/nio/file/attribute/FileTime;

.field public h:Ljava/nio/file/attribute/FileTime;

.field public i:Ljava/nio/file/attribute/FileTime;

.field public j:Ljava/nio/file/attribute/FileTime;

.field public k:B

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/g;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:J

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p2}, La4/b;-><init>(Z)V

    invoke-static {p1, p2}, La4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    iput-object p1, p0, La4/b;->a:Ljava/lang/String;

    if-eqz p2, :cond_14

    const/16 p1, 0x41ed

    goto :goto_17

    :cond_14
    const p1, 0x81a4

    :goto_17
    iput p1, p0, La4/b;->c:I

    if-eqz p2, :cond_1e

    const/16 p1, 0x35

    goto :goto_20

    :cond_1e
    const/16 p1, 0x30

    :goto_20
    iput-byte p1, p0, La4/b;->k:B

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    iput-object p1, p0, La4/b;->g:Ljava/nio/file/attribute/FileTime;

    const-string p1, ""

    iput-object p1, p0, La4/b;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, La4/b;->a:Ljava/lang/String;

    iput-object v0, p0, La4/b;->l:Ljava/lang/String;

    const-string v1, "ustar\u0000"

    iput-object v1, p0, La4/b;->m:Ljava/lang/String;

    const-string v1, "00"

    iput-object v1, p0, La4/b;->n:Ljava/lang/String;

    iput-object v0, p0, La4/b;->p:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, La4/b;->y:Ljava/util/Map;

    const-string v1, "user.name"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_2d

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    iput-object v0, p0, La4/b;->o:Ljava/lang/String;

    iput-boolean p1, p0, La4/b;->b:Z

    return-void
.end method

.method public static a(J)Ljava/nio/file/attribute/FileTime;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_56

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_42

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_56

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_56

    const/16 v3, 0x61

    if-lt v1, v3, :cond_35

    const/16 v3, 0x7a

    if-le v1, v3, :cond_3d

    :cond_35
    const/16 v3, 0x41

    if-lt v1, v3, :cond_56

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_56

    :cond_3d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_56

    :cond_42
    const-string v2, "netware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_56

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_56
    :goto_56
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_5e
    if-nez p1, :cond_6d

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5e

    :cond_6d
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/time/Instant;
    .registers 6

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(II[BI)I
    .registers 6

    int-to-byte p0, p1

    const/4 p1, 0x0

    :goto_2
    if-ge p1, p4, :cond_b

    add-int v0, p2, p1

    aput-byte p0, p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_b
    add-int/2addr p2, p4

    return p2
.end method

.method public c()J
    .registers 3

    invoke-virtual {p0}, La4/b;->g()Z

    move-result v0

    if-nez v0, :cond_9

    iget-wide v0, p0, La4/b;->f:J

    return-wide v0

    :cond_9
    iget-wide v0, p0, La4/b;->u:J

    return-wide v0
.end method

.method public d()Z
    .registers 5

    iget-byte v0, p0, La4/b;->k:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    const/16 v1, 0x78

    const/4 v3, 0x0

    if-eq v0, v1, :cond_14

    const/16 v1, 0x58

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    move v0, v3

    goto :goto_15

    :cond_14
    :goto_14
    move v0, v2

    :goto_15
    if-nez v0, :cond_28

    invoke-virtual {p0}, La4/b;->e()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p0, p0, La4/b;->a:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    return v2
.end method

.method public e()Z
    .registers 2

    iget-byte p0, p0, La4/b;->k:B

    const/16 v0, 0x67

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    const-class v1, La4/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_c

    goto :goto_19

    :cond_c
    check-cast p1, La4/b;

    iget-object p0, p0, La4/b;->a:Ljava/lang/String;

    iget-object p1, p1, La4/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    :goto_19
    return v0
.end method

.method public final f([BII)Z
    .registers 8

    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0x80

    const/4 v0, 0x0

    if-nez p0, :cond_27

    const/4 p0, 0x1

    sub-int/2addr p3, p0

    move v1, v0

    :goto_a
    if-ge v1, p3, :cond_1d

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x37

    if-le v2, v3, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    :goto_1c
    return p0

    :cond_1d
    add-int/2addr p2, p3

    aget-byte p1, p1, p2

    const/16 p2, 0x20

    if-eq p1, p2, :cond_27

    if-eqz p1, :cond_27

    return p0

    :cond_27
    return v0
.end method

.method public g()Z
    .registers 5

    iget-byte v0, p0, La4/b;->k:B

    const/16 v1, 0x53

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-nez v0, :cond_14

    iget-boolean v0, p0, La4/b;->v:Z

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    move v0, v2

    goto :goto_15

    :cond_14
    :goto_14
    move v0, v3

    :goto_15
    if-nez v0, :cond_1b

    iget-boolean p0, p0, La4/b;->x:Z

    if-eqz p0, :cond_1c

    :cond_1b
    move v2, v3

    :cond_1c
    return v2
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, La4/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final j([BIIZ)J
    .registers 5

    if-eqz p4, :cond_a

    :try_start_2
    invoke-static {p1, p2, p3}, La4/h;->g([BII)J

    move-result-wide p0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    return-wide p0

    :catch_7
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_a
    invoke-static {p1, p2, p3}, La4/h;->g([BII)J

    move-result-wide p0

    return-wide p0
.end method

.method public final k(Ljava/util/Map;[BLb4/b;ZZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lb4/b;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    const/4 v4, 0x0

    const/16 v5, 0x64

    if-eqz p4, :cond_12

    invoke-static {v1, v4, v5}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    :cond_12
    invoke-static {v1, v4, v5, v2}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object v6

    :goto_16
    iput-object v6, v0, La4/b;->a:Ljava/lang/String;

    const/16 v6, 0x8

    invoke-virtual {v0, v1, v5, v6, v3}, La4/b;->j([BIIZ)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v0, La4/b;->c:I

    const/16 v7, 0x6c

    invoke-virtual {v0, v1, v7, v6, v3}, La4/b;->j([BIIZ)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v7, v7

    iput-wide v7, v0, La4/b;->d:J

    const/16 v7, 0x74

    invoke-virtual {v0, v1, v7, v6, v3}, La4/b;->j([BIIZ)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v7, v7

    iput-wide v7, v0, La4/b;->e:J

    const/16 v7, 0x7c

    const/16 v8, 0xc

    invoke-static {v1, v7, v8}, La4/h;->g([BII)J

    move-result-wide v9

    iput-wide v9, v0, La4/b;->f:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-ltz v7, :cond_1ec

    const/16 v7, 0x88

    invoke-virtual {v0, v1, v7, v8, v3}, La4/b;->j([BIIZ)J

    move-result-wide v9

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v9, v10, v7}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, v0, La4/b;->g:Ljava/nio/file/attribute/FileTime;

    const/16 v7, 0x94

    invoke-static {v1, v7, v6}, La4/h;->f([BII)J

    :goto_58
    array-length v7, v1

    const/16 v9, 0x9c

    const/16 v10, 0x20

    if-ge v4, v7, :cond_64

    aget-byte v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_64
    const/16 v4, 0x9d

    aget-byte v7, v1, v9

    iput-byte v7, v0, La4/b;->k:B

    if-eqz p4, :cond_71

    invoke-static {v1, v4, v5}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_75

    :cond_71
    invoke-static {v1, v4, v5, v2}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object v4

    :goto_75
    iput-object v4, v0, La4/b;->l:Ljava/lang/String;

    const/16 v4, 0x101

    const/4 v5, 0x6

    invoke-static {v1, v4, v5}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, La4/b;->m:Ljava/lang/String;

    const/16 v7, 0x107

    const/4 v11, 0x2

    invoke-static {v1, v7, v11}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, La4/b;->n:Ljava/lang/String;

    const/16 v7, 0x109

    if-eqz p4, :cond_92

    invoke-static {v1, v7, v10}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v7

    goto :goto_96

    :cond_92
    invoke-static {v1, v7, v10, v2}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object v7

    :goto_96
    iput-object v7, v0, La4/b;->o:Ljava/lang/String;

    const/16 v7, 0x129

    if-eqz p4, :cond_a1

    invoke-static {v1, v7, v10}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v7

    goto :goto_a5

    :cond_a1
    invoke-static {v1, v7, v10, v2}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object v7

    :goto_a5
    iput-object v7, v0, La4/b;->p:Ljava/lang/String;

    const/16 v7, 0x149

    iget-byte v12, v0, La4/b;->k:B

    const/16 v13, 0x33

    if-eq v12, v13, :cond_b3

    const/16 v13, 0x34

    if-ne v12, v13, :cond_c3

    :cond_b3
    invoke-virtual {v0, v1, v7, v6, v3}, La4/b;->j([BIIZ)J

    move-result-wide v12

    long-to-int v7, v12

    iput v7, v0, La4/b;->q:I

    const/16 v7, 0x151

    invoke-virtual {v0, v1, v7, v6, v3}, La4/b;->j([BIIZ)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v0, La4/b;->r:I

    :cond_c3
    const/16 v6, 0x159

    const-string v7, "ustar "

    invoke-static {v7, v1, v4, v5}, Lc4/a;->a(Ljava/lang/String;[BII)Z

    move-result v7

    const/16 v12, 0x1e8

    const/16 v13, 0x1dc

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-eqz v7, :cond_d6

    move v4, v11

    goto/16 :goto_13b

    :cond_d6
    const-string v7, "ustar\u0000"

    invoke-static {v7, v1, v4, v5}, Lc4/a;->a(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_13a

    const/16 v4, 0x1fc

    const-string v5, "tar\u0000"

    invoke-static {v5, v1, v4, v14}, Lc4/a;->a(Ljava/lang/String;[BII)Z

    move-result v4

    if-eqz v4, :cond_e9

    goto :goto_133

    :cond_e9
    const-string v4, "SCHILY.archtype"

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_106

    const-string v5, "xustar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_133

    const-string v5, "exustar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_131

    goto :goto_133

    :cond_106
    const/16 v4, 0x1db

    aget-byte v5, v1, v4

    if-eqz v5, :cond_120

    aget-byte v5, v1, v9

    const/16 v7, 0x4d

    if-ne v5, v7, :cond_11e

    const/16 v5, 0x1d0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_120

    aget-byte v4, v1, v4

    if-eq v4, v10, :cond_120

    :cond_11e
    move v4, v15

    goto :goto_121

    :cond_120
    const/4 v4, 0x0

    :goto_121
    if-eqz v4, :cond_124

    goto :goto_131

    :cond_124
    invoke-virtual {v0, v1, v13, v8}, La4/b;->f([BII)Z

    move-result v4

    if-eqz v4, :cond_12b

    goto :goto_131

    :cond_12b
    invoke-virtual {v0, v1, v12, v8}, La4/b;->f([BII)Z

    move-result v4

    if-eqz v4, :cond_133

    :cond_131
    :goto_131
    const/4 v4, 0x0

    goto :goto_134

    :cond_133
    :goto_133
    move v4, v15

    :goto_134
    if-eqz v4, :cond_138

    move v4, v14

    goto :goto_13b

    :cond_138
    const/4 v4, 0x3

    goto :goto_13b

    :cond_13a
    const/4 v4, 0x0

    :goto_13b
    if-eq v4, v11, :cond_1b6

    const-string v5, "/"

    if-eq v4, v14, :cond_17f

    const/16 v3, 0x9b

    if-eqz p4, :cond_14a

    invoke-static {v1, v6, v3}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_14e

    :cond_14a
    invoke-static {v1, v6, v3, v2}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object v1

    :goto_14e
    invoke-virtual/range {p0 .. p0}, La4/b;->d()Z

    move-result v2

    if-eqz v2, :cond_169

    iget-object v2, v0, La4/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_169

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, La4/b;->a:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, La4/b;->a:Ljava/lang/String;

    :cond_169
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1eb

    invoke-static {v1, v5}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, La4/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, La4/b;->a:Ljava/lang/String;

    goto :goto_1eb

    :cond_17f
    const/16 v4, 0x83

    if-eqz p4, :cond_188

    invoke-static {v1, v6, v4}, La4/h;->d([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_18c

    :cond_188
    invoke-static {v1, v6, v4, v2}, La4/h;->e([BIILb4/b;)Ljava/lang/String;

    move-result-object v2

    :goto_18c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a1

    invoke-static {v2, v5}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, La4/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, La4/b;->a:Ljava/lang/String;

    :cond_1a1
    invoke-virtual {v0, v1, v13, v8, v3}, La4/b;->j([BIIZ)J

    move-result-wide v4

    invoke-static {v4, v5}, La4/b;->a(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    iput-object v2, v0, La4/b;->i:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0, v1, v12, v8, v3}, La4/b;->j([BIIZ)J

    move-result-wide v1

    invoke-static {v1, v2}, La4/b;->a(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, v0, La4/b;->h:Ljava/nio/file/attribute/FileTime;

    goto :goto_1eb

    :cond_1b6
    invoke-virtual {v0, v1, v6, v8, v3}, La4/b;->j([BIIZ)J

    move-result-wide v4

    invoke-static {v4, v5}, La4/b;->a(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    iput-object v2, v0, La4/b;->i:Ljava/nio/file/attribute/FileTime;

    const/16 v2, 0x165

    invoke-virtual {v0, v1, v2, v8, v3}, La4/b;->j([BIIZ)J

    move-result-wide v2

    invoke-static {v2, v3}, La4/b;->a(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    iput-object v2, v0, La4/b;->h:Ljava/nio/file/attribute/FileTime;

    const/16 v2, 0x182

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2, v14}, La4/h;->j([BII)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, La4/b;->s:Ljava/util/List;

    const/16 v2, 0x1e2

    aget-byte v2, v1, v2

    if-ne v2, v15, :cond_1e0

    goto :goto_1e1

    :cond_1e0
    const/4 v15, 0x0

    :goto_1e1
    iput-boolean v15, v0, La4/b;->t:Z

    const/16 v2, 0x1e3

    invoke-static {v1, v2, v8}, La4/h;->f([BII)J

    move-result-wide v1

    iput-wide v1, v0, La4/b;->u:J

    :cond_1eb
    :goto_1eb
    return-void

    :cond_1ec
    new-instance v0, Ljava/io/IOException;

    const-string v1, "broken archive, entry with negative size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, La4/b;->b:Z

    invoke-static {p1, v0}, La4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La4/b;->a:Ljava/lang/String;

    return-void
.end method

.method public m(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    iput-wide p1, p0, La4/b;->f:J

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size is out of range: "

    invoke-static {v0, p1, p2}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n([BLb4/b;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, La4/b;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x64

    invoke-static {v0, v8, v10, v11, v9}, La4/h;->b(Ljava/lang/String;[BIILb4/b;)I

    move-result v4

    iget v0, v7, La4/b;->c:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, La4/b;->o(J[BIIZ)I

    move-result v4

    iget-wide v1, v7, La4/b;->d:J

    invoke-virtual/range {v0 .. v6}, La4/b;->o(J[BIIZ)I

    move-result v4

    iget-wide v1, v7, La4/b;->e:J

    invoke-virtual/range {v0 .. v6}, La4/b;->o(J[BIIZ)I

    move-result v4

    iget-wide v1, v7, La4/b;->f:J

    const/16 v5, 0xc

    invoke-virtual/range {v0 .. v6}, La4/b;->o(J[BIIZ)I

    move-result v4

    iget-object v0, v7, La4/b;->g:Ljava/nio/file/attribute/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, La4/b;->o(J[BIIZ)I

    move-result v12

    move v0, v10

    :goto_3e
    const/16 v13, 0x20

    const/16 v14, 0x8

    if-ge v0, v14, :cond_4b

    add-int v1, v12, v0

    aput-byte v13, v8, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4b
    add-int/lit8 v0, v12, 0x8

    add-int/lit8 v1, v0, 0x1

    iget-byte v2, v7, La4/b;->k:B

    aput-byte v2, v8, v0

    iget-object v0, v7, La4/b;->l:Ljava/lang/String;

    invoke-static {v0, v8, v1, v11, v9}, La4/h;->b(Ljava/lang/String;[BIILb4/b;)I

    move-result v0

    iget-object v1, v7, La4/b;->m:Ljava/lang/String;

    const/4 v11, 0x6

    invoke-static {v1, v8, v0, v11}, La4/h;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, v7, La4/b;->n:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v8, v0, v2}, La4/h;->a(Ljava/lang/String;[BII)I

    move-result v0

    iget-object v1, v7, La4/b;->o:Ljava/lang/String;

    invoke-static {v1, v8, v0, v13, v9}, La4/h;->b(Ljava/lang/String;[BIILb4/b;)I

    move-result v0

    iget-object v1, v7, La4/b;->p:Ljava/lang/String;

    invoke-static {v1, v8, v0, v13, v9}, La4/h;->b(Ljava/lang/String;[BIILb4/b;)I

    move-result v4

    iget v0, v7, La4/b;->q:I

    int-to-long v1, v0

    const/16 v9, 0x8

    const/16 v5, 0x8

    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, La4/b;->o(J[BIIZ)I

    move-result v4

    iget v0, v7, La4/b;->r:I

    int-to-long v1, v0

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v6}, La4/b;->o(J[BIIZ)I

    move-result v0

    if-eqz p3, :cond_ab

    const/16 v1, 0x83

    invoke-virtual {p0, v10, v0, v8, v1}, La4/b;->b(II[BI)I

    move-result v0

    iget-object v1, v7, La4/b;->i:Ljava/nio/file/attribute/FileTime;

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v0, v8, v2}, La4/b;->p(Ljava/nio/file/attribute/FileTime;I[BI)I

    move-result v0

    iget-object v1, v7, La4/b;->h:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v0, v8, v2}, La4/b;->p(Ljava/nio/file/attribute/FileTime;I[BI)I

    move-result v0

    invoke-virtual {p0, v10, v0, v8, v14}, La4/b;->b(II[BI)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v10, v0, v8, v1}, La4/b;->b(II[BI)I

    move-result v0

    :cond_ab
    array-length v1, v8

    sub-int/2addr v1, v0

    invoke-virtual {p0, v10, v0, v8, v1}, La4/b;->b(II[BI)I

    array-length v0, v8

    const-wide/16 v1, 0x0

    move v3, v10

    :goto_b4
    if-ge v3, v0, :cond_bf

    aget-byte v4, v8, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    :cond_bf
    invoke-static {v1, v2, v8, v12, v11}, La4/h;->c(J[BII)V

    add-int/2addr v11, v12

    aput-byte v10, v8, v11

    add-int/lit8 v12, v12, 0x7

    aput-byte v13, v8, v12

    return-void
.end method

.method public final o(J[BIIZ)I
    .registers 28

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const/16 v5, 0x20

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    if-nez p6, :cond_29

    cmp-long v10, v0, v8

    if-ltz v10, :cond_1e

    add-int/lit8 v10, v4, -0x1

    mul-int/lit8 v10, v10, 0x3

    shl-long v10, v6, v10

    cmp-long v10, v0, v10

    if-ltz v10, :cond_29

    :cond_1e
    add-int/lit8 v0, v4, -0x1

    invoke-static {v8, v9, v2, v3, v0}, La4/h;->c(J[BII)V

    add-int/2addr v0, v3

    aput-byte v5, v2, v0

    add-int v0, v3, v4

    return v0

    :cond_29
    sget-object v10, La4/h;->a:Lb4/b;

    const/16 v10, 0x8

    if-ne v4, v10, :cond_33

    const-wide/32 v11, 0x1fffff

    goto :goto_38

    :cond_33
    const-wide v11, 0x1ffffffffL

    :goto_38
    cmp-long v13, v0, v8

    const/4 v14, 0x0

    if-gez v13, :cond_3f

    const/4 v13, 0x1

    goto :goto_40

    :cond_3f
    move v13, v14

    :goto_40
    if-nez v13, :cond_50

    cmp-long v11, v0, v11

    if-gtz v11, :cond_50

    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v1, v2, v3, v6}, La4/h;->c(J[BII)V

    add-int/2addr v6, v3

    aput-byte v5, v2, v6

    goto/16 :goto_d2

    :cond_50
    const/16 v5, 0x9

    const-string v11, " byte field."

    const-string v12, " is too large for "

    const-string v15, "Value "

    const/16 v16, 0xff

    if-ge v4, v5, :cond_a8

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v10

    shl-long v17, v6, v5

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    cmp-long v8, v19, v8

    if-ltz v8, :cond_8a

    cmp-long v8, v19, v17

    if-gez v8, :cond_8a

    if-eqz v13, :cond_7a

    sub-long v17, v17, v6

    xor-long v0, v19, v17

    add-long/2addr v0, v6

    const-wide/16 v6, 0xff

    shl-long v5, v6, v5

    or-long v19, v0, v5

    :cond_7a
    add-int v0, v4, v3

    add-int/lit8 v0, v0, -0x1

    move-wide/from16 v5, v19

    :goto_80
    if-lt v0, v3, :cond_c8

    long-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    shr-long/2addr v5, v10

    add-int/lit8 v0, v0, -0x1

    goto :goto_80

    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a8
    invoke-static/range {p1 .. p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v7, v4, -0x1

    if-gt v6, v7, :cond_d5

    add-int v0, v4, v3

    sub-int/2addr v0, v6

    invoke-static {v5, v14, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v13, :cond_bf

    move/from16 v14, v16

    :cond_bf
    int-to-byte v1, v14

    move v5, v3

    const/4 v6, 0x1

    :goto_c2
    add-int/2addr v5, v6

    if-ge v5, v0, :cond_c8

    aput-byte v1, v2, v5

    goto :goto_c2

    :cond_c8
    if-eqz v13, :cond_cb

    goto :goto_cd

    :cond_cb
    const/16 v16, 0x80

    :goto_cd
    move/from16 v0, v16

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    :goto_d2
    add-int v0, v3, v4

    return v0

    :cond_d5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final p(Ljava/nio/file/attribute/FileTime;I[BI)I
    .registers 13

    if-eqz p1, :cond_12

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p3

    move v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, La4/b;->o(J[BIIZ)I

    move-result p0

    goto :goto_17

    :cond_12
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, La4/b;->b(II[BI)I

    move-result p0

    :goto_17
    return p0
.end method
