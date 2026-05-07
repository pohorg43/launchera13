.class public La4/d;
.super Lz3/b;
.source ""


# static fields
.field public static final synthetic n:I


# instance fields
.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public final e:[B

.field public f:I

.field public g:I

.field public final h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public final l:Lc4/d;

.field public final m:Lb4/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "ASCII"

    invoke-static {v0}, Lb4/c;->a(Ljava/lang/String;)Lb4/b;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Lz3/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La4/d;->f:I

    new-instance v0, Lc4/d;

    new-instance v1, Lc4/c;

    invoke-direct {v1, p1}, Lc4/c;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x200

    invoke-direct {v0, v1, p1}, Lc4/d;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, La4/d;->l:Lc4/d;

    const/4 v0, 0x0

    invoke-static {v0}, Lb4/c;->a(Ljava/lang/String;)Lb4/b;

    move-result-object v0

    iput-object v0, p0, La4/d;->m:Lb4/b;

    new-array p1, p1, [B

    iput-object p1, p0, La4/d;->e:[B

    const/4 p1, 0x1

    iput p1, p0, La4/d;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La4/d;->k:Z

    if-nez v0, :cond_6b

    iget-boolean v0, p0, La4/d;->j:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, La4/d;->l:Lc4/d;

    invoke-virtual {v0}, Lc4/d;->a()V

    iget-wide v0, p0, La4/d;->d:J

    iget-wide v2, p0, La4/d;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_35

    iget v0, p0, La4/d;->g:I

    const-wide/16 v4, 0x200

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    iput v0, p0, La4/d;->g:I

    const-wide/16 v1, 0x0

    iget-wide v6, p0, La4/d;->b:J

    rem-long/2addr v6, v4

    cmp-long v1, v1, v6

    if-eqz v1, :cond_31

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La4/d;->g:I

    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, La4/d;->j:Z

    return-void

    :cond_35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Entry \'"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La4/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' closed at \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La4/d;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' before the \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, La4/d;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\' bytes specified in the header were written"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string v0, "No current entry to close"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/util/Map;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Lcom/android/launcher3/card/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/a;-><init>(Ljava/io/StringWriter;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;JJLjava/lang/String;)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-ltz p0, :cond_b

    cmp-long p0, p2, p4

    if-gtz p0, :cond_b

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\' is too big ( > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    iget-boolean v1, p0, La4/d;->k:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, La4/d;->d()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_14

    :cond_8
    iget-boolean v1, p0, La4/d;->i:Z

    if-nez v1, :cond_13

    iget-object v1, p0, La4/d;->l:Lc4/d;

    invoke-virtual {v1}, Lc4/d;->close()V

    iput-boolean v0, p0, La4/d;->i:Z

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    iget-boolean v2, p0, La4/d;->i:Z

    if-nez v2, :cond_20

    iget-object v2, p0, La4/d;->l:Lc4/d;

    invoke-virtual {v2}, Lc4/d;->close()V

    iput-boolean v0, p0, La4/d;->i:Z

    :cond_20
    throw v1
.end method

.method public d()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La4/d;->k:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, La4/d;->j:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, La4/d;->h()V

    invoke-virtual {p0}, La4/d;->h()V

    iget v0, p0, La4/d;->g:I

    iget v1, p0, La4/d;->h:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1f

    :goto_15
    iget v1, p0, La4/d;->h:I

    if-ge v0, v1, :cond_1f

    invoke-virtual {p0}, La4/d;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1f
    iget-object v0, p0, La4/d;->l:Lc4/d;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La4/d;->k:Z

    return-void

    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive contains unclosed entries."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(La4/b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "B",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La4/d;->m:Lb4/b;

    invoke-interface {v0, p2}, Lb4/b;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-lt v1, v2, :cond_7f

    iget v4, p0, La4/d;->f:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1e

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    :cond_1e
    const/4 p3, 0x2

    if-ne v4, p3, :cond_55

    new-instance p2, La4/b;

    const-string p3, "././@LongLink"

    invoke-direct {p2, p3, v3}, La4/b;-><init>(Ljava/lang/String;Z)V

    iput-byte p5, p2, La4/b;->k:B

    const/16 p3, 0x4c

    if-ne p5, p3, :cond_36

    const-string p3, "ustar "

    iput-object p3, p2, La4/b;->m:Ljava/lang/String;

    const-string p3, " \u0000"

    iput-object p3, p2, La4/b;->n:Ljava/lang/String;

    :cond_36
    int-to-long p3, v1

    const-wide/16 p5, 0x1

    add-long/2addr p3, p5

    invoke-virtual {p2, p3, p4}, La4/b;->m(J)V

    invoke-virtual {p0, p1, p2}, La4/d;->g(La4/b;La4/b;)V

    invoke-virtual {p0, p2}, La4/d;->f(Lz3/a;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, La4/d;->write([BII)V

    invoke-virtual {p0, v3}, Lz3/b;->write(I)V

    invoke-virtual {p0}, La4/d;->a()V

    goto :goto_7f

    :cond_55
    if-ne v4, v6, :cond_58

    goto :goto_7f

    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is too long ( > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    :goto_7f
    return v3
.end method

.method public f(Lz3/a;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    iget-boolean v0, v7, La4/d;->k:Z

    if-nez v0, :cond_16e

    move-object/from16 v8, p1

    check-cast v8, La4/b;

    invoke-virtual {v8}, La4/b;->e()Z

    move-result v0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_3f

    iget-object v0, v8, La4/b;->y:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, La4/d;->b(Ljava/util/Map;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {v8, v1, v2}, La4/b;->m(J)V

    iget-object v1, v7, La4/d;->e:[B

    iget-object v2, v7, La4/d;->m:Lb4/b;

    invoke-virtual {v8, v1, v2, v11}, La4/b;->n([BLb4/b;Z)V

    iget-object v1, v7, La4/d;->e:[B

    invoke-virtual {v7, v1}, La4/d;->i([B)V

    iget-wide v1, v8, La4/b;->f:J

    iput-wide v1, v7, La4/d;->b:J

    iput-wide v9, v7, La4/d;->d:J

    iput-boolean v12, v7, La4/d;->j:Z

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p0 .. p0}, La4/d;->a()V

    goto/16 :goto_16d

    :cond_3f
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iget-object v14, v8, La4/b;->a:Ljava/lang/String;

    const/16 v5, 0x4c

    const-string v4, "path"

    const-string v6, "file name"

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v14

    move-object v3, v13

    invoke-virtual/range {v0 .. v6}, La4/d;->e(La4/b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    iget-object v2, v8, La4/b;->l:Ljava/lang/String;

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    const/16 v5, 0x4b

    const-string v4, "linkpath"

    const-string v6, "link name"

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v3, v13

    invoke-virtual/range {v0 .. v6}, La4/d;->e(La4/b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    :cond_6b
    iget-wide v2, v8, La4/b;->f:J

    const-wide v4, 0x1ffffffffL

    const-string v1, "entry size"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, La4/d;->c(Ljava/lang/String;JJLjava/lang/String;)V

    iget-wide v2, v8, La4/b;->e:J

    const-wide/32 v4, 0x1fffff

    const-string v1, "group id"

    const-string v6, " Use STAR or POSIX extensions to overcome this limit"

    invoke-virtual/range {v0 .. v6}, La4/d;->c(Ljava/lang/String;JJLjava/lang/String;)V

    iget-object v0, v8, La4/b;->g:Ljava/nio/file/attribute/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide v4, 0x1ffffffffL

    const-string v1, "last modification time"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, La4/d;->c(Ljava/lang/String;JJLjava/lang/String;)V

    iget-wide v2, v8, La4/b;->d:J

    const-wide/32 v15, 0x1fffff

    const-wide/32 v17, 0x1fffff

    const-string v1, "user id"

    const-string v6, ""

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, La4/d;->c(Ljava/lang/String;JJLjava/lang/String;)V

    iget v0, v8, La4/b;->c:I

    int-to-long v2, v0

    const-string v1, "mode"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, La4/d;->c(Ljava/lang/String;JJLjava/lang/String;)V

    iget v0, v8, La4/b;->q:I

    int-to-long v2, v0

    const-string v1, "major device number"

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, La4/d;->c(Ljava/lang/String;JJLjava/lang/String;)V

    iget v0, v8, La4/b;->r:I

    int-to-long v2, v0

    const-string v1, "minor device number"

    const-string v6, ""

    move-object/from16 v0, p0

    move-wide v4, v15

    invoke-virtual/range {v0 .. v6}, La4/d;->c(Ljava/lang/String;JJLjava/lang/String;)V

    iget-object v0, v8, La4/b;->y:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14e

    const-string v0, "./PaxHeaders.X/"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v11

    :goto_f2
    if-ge v3, v1, :cond_117

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    if-eqz v4, :cond_108

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_108

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_106

    goto :goto_108

    :cond_106
    move v5, v11

    goto :goto_109

    :cond_108
    :goto_108
    move v5, v12

    :goto_109
    if-eqz v5, :cond_111

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_114

    :cond_111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_114
    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    :cond_117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_130

    const/16 v1, 0x63

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_130
    new-instance v1, La4/b;

    const/16 v2, 0x78

    invoke-direct {v1, v0, v11}, La4/b;-><init>(Ljava/lang/String;Z)V

    iput-byte v2, v1, La4/b;->k:B

    invoke-virtual {v7, v8, v1}, La4/d;->g(La4/b;La4/b;)V

    invoke-virtual {v7, v13}, La4/d;->b(Ljava/util/Map;)[B

    move-result-object v0

    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, La4/b;->m(J)V

    invoke-virtual {v7, v1}, La4/d;->f(Lz3/a;)V

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p0 .. p0}, La4/d;->a()V

    :cond_14e
    iget-object v0, v7, La4/d;->e:[B

    iget-object v1, v7, La4/d;->m:Lb4/b;

    invoke-virtual {v8, v0, v1, v11}, La4/b;->n([BLb4/b;Z)V

    iget-object v0, v7, La4/d;->e:[B

    invoke-virtual {v7, v0}, La4/d;->i([B)V

    iput-wide v9, v7, La4/d;->d:J

    invoke-virtual {v8}, La4/b;->d()Z

    move-result v0

    if-eqz v0, :cond_165

    iput-wide v9, v7, La4/d;->b:J

    goto :goto_169

    :cond_165
    iget-wide v0, v8, La4/b;->f:J

    iput-wide v0, v7, La4/d;->b:J

    :goto_169
    iput-object v14, v7, La4/d;->c:Ljava/lang/String;

    iput-boolean v12, v7, La4/d;->j:Z

    :goto_16d
    return-void

    :cond_16e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, La4/d;->l:Lc4/d;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final g(La4/b;La4/b;)V
    .registers 9

    iget-object p0, p1, La4/b;->g:Ljava/nio/file/attribute/FileTime;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_17

    const-wide v4, 0x1ffffffffL

    cmp-long p0, v0, v4

    if-lez p0, :cond_18

    :cond_17
    move-wide v0, v2

    :cond_18
    invoke-static {v0, v1, p1}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    const-string p1, "Time must not be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, p2, La4/b;->g:Ljava/nio/file/attribute/FileTime;

    return-void
.end method

.method public final h()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La4/d;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, La4/d;->e:[B

    invoke-virtual {p0, v0}, La4/d;->i([B)V

    return-void
.end method

.method public final i([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x200

    if-ne v0, v1, :cond_11

    iget-object v0, p0, La4/d;->l:Lc4/d;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, La4/d;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La4/d;->g:I

    return-void

    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Record to write has length \'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' which is not the record size of \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La4/d;->j:Z

    if-eqz v0, :cond_39

    iget-wide v0, p0, La4/d;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v4, p0, La4/d;->b:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_19

    iget-object v0, p0, La4/d;->l:Lc4/d;

    invoke-virtual {v0, p1, p2, p3}, Lc4/d;->write([BII)V

    iget-wide p1, p0, La4/d;->d:J

    add-long/2addr p1, v2

    iput-wide p1, p0, La4/d;->d:J

    return-void

    :cond_19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Request to write \'"

    const-string v0, "\' bytes exceeds size in header of \'"

    invoke-static {p2, p3, v0}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, La4/d;->b:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\' bytes for entry \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La4/d;->c:Ljava/lang/String;

    const-string p3, "\'"

    invoke-static {p2, p0, p3}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current tar entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
