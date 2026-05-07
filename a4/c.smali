.class public La4/c;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public final a:[B

.field public b:J

.field public final c:[B

.field public final d:I

.field public final e:[B

.field public final f:I

.field public g:Z

.field public h:J

.field public i:J

.field public final j:Ljava/io/InputStream;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:La4/b;

.field public final n:Lb4/b;

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, La4/c;->a:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, La4/c;->c:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La4/c;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La4/c;->p:Ljava/util/List;

    iput-object p1, p0, La4/c;->j:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, La4/c;->g:Z

    const/4 p1, 0x0

    invoke-static {p1}, Lb4/c;->a(Ljava/lang/String;)Lb4/b;

    move-result-object p1

    iput-object p1, p0, La4/c;->n:Lb4/b;

    const/16 p1, 0x200

    iput p1, p0, La4/c;->d:I

    new-array p1, p1, [B

    iput-object p1, p0, La4/c;->e:[B

    const/16 p1, 0x2800

    iput p1, p0, La4/c;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "La4/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La4/c;->m:La4/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_243

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "GNU.sparse.size"

    const-string v6, "GNU.sparse.realsize"

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v4, :sswitch_data_248

    goto/16 :goto_f9

    :sswitch_37
    const-string v4, "linkpath"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto/16 :goto_f9

    :cond_41
    const/16 v8, 0xf

    goto/16 :goto_f9

    :sswitch_45
    const-string v4, "SCHILY.filetype"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_f9

    :cond_4f
    const/16 v8, 0xe

    goto/16 :goto_f9

    :sswitch_53
    const-string v4, "LIBARCHIVE.creationtime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto/16 :goto_f9

    :cond_5d
    const/16 v8, 0xd

    goto/16 :goto_f9

    :sswitch_61
    const-string v4, "uname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    goto/16 :goto_f9

    :cond_6b
    const/16 v8, 0xc

    goto/16 :goto_f9

    :sswitch_6f
    const-string v4, "mtime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    goto/16 :goto_f9

    :cond_79
    const/16 v8, 0xb

    goto/16 :goto_f9

    :sswitch_7d
    const-string v4, "gname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    goto/16 :goto_f9

    :cond_87
    const/16 v8, 0xa

    goto/16 :goto_f9

    :sswitch_8b
    const-string v4, "ctime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    goto/16 :goto_f9

    :cond_95
    const/16 v8, 0x9

    goto/16 :goto_f9

    :sswitch_99
    const-string v4, "atime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    goto/16 :goto_f9

    :cond_a3
    const/16 v8, 0x8

    goto :goto_f9

    :sswitch_a6
    const-string v4, "size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    goto :goto_f9

    :cond_af
    const/4 v8, 0x7

    goto :goto_f9

    :sswitch_b1
    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ba

    goto :goto_f9

    :cond_ba
    const/4 v8, 0x6

    goto :goto_f9

    :sswitch_bc
    const-string v4, "uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c5

    goto :goto_f9

    :cond_c5
    const/4 v8, 0x5

    goto :goto_f9

    :sswitch_c7
    const-string v4, "gid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    goto :goto_f9

    :cond_d0
    const/4 v8, 0x4

    goto :goto_f9

    :sswitch_d2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d9

    goto :goto_f9

    :cond_d9
    const/4 v8, 0x3

    goto :goto_f9

    :sswitch_db
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e2

    goto :goto_f9

    :cond_e2
    const/4 v8, 0x2

    goto :goto_f9

    :sswitch_e4
    const-string v4, "SCHILY.devminor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ed

    goto :goto_f9

    :cond_ed
    move v8, v7

    goto :goto_f9

    :sswitch_ef
    const-string v4, "SCHILY.devmajor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f8

    goto :goto_f9

    :cond_f8
    const/4 v8, 0x0

    :goto_f9
    const-string v4, " contains non-numeric value"

    const-string v9, "GNU.sparse.name"

    packed-switch v8, :pswitch_data_28a

    iget-object v4, v0, La4/b;->y:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_107  #0xf
    iput-object v2, v0, La4/b;->l:Ljava/lang/String;

    goto/16 :goto_d

    :pswitch_10b  #0xe
    const-string v3, "sparse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-boolean v7, v0, La4/b;->x:Z

    const-string v2, "SCHILY.realsize"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_11d
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, La4/b;->u:J
    :try_end_129
    .catch Ljava/lang/NumberFormatException; {:try_start_11d .. :try_end_129} :catch_12b

    goto/16 :goto_d

    :catch_12b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupted TAR archive. SCHILY.realsize header for "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v0, La4/b;->a:Ljava/lang/String;

    invoke-static {p1, p2, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13d  #0xd
    invoke-static {v2}, La4/b;->i(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    iput-object v2, v0, La4/b;->j:Ljava/nio/file/attribute/FileTime;

    goto/16 :goto_d

    :pswitch_149  #0xc
    iput-object v2, v0, La4/b;->o:Ljava/lang/String;

    goto/16 :goto_d

    :pswitch_14d  #0xb
    invoke-static {v2}, La4/b;->i(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    const-string v3, "Time must not be null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v2, v0, La4/b;->g:Ljava/nio/file/attribute/FileTime;

    goto/16 :goto_d

    :pswitch_15e  #0xa
    iput-object v2, v0, La4/b;->p:Ljava/lang/String;

    goto/16 :goto_d

    :pswitch_162  #0x9
    invoke-static {v2}, La4/b;->i(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    iput-object v2, v0, La4/b;->h:Ljava/nio/file/attribute/FileTime;

    goto/16 :goto_d

    :pswitch_16e  #0x8
    invoke-static {v2}, La4/b;->i(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    iput-object v2, v0, La4/b;->i:Ljava/nio/file/attribute/FileTime;

    goto/16 :goto_d

    :pswitch_17a  #0x7
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_189

    invoke-virtual {v0, v2, v3}, La4/b;->m(J)V

    goto/16 :goto_d

    :cond_189
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupted TAR archive. Entry size is negative"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_191  #0x6
    iget-boolean v3, v0, La4/b;->b:Z

    invoke-static {v2, v3}, La4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, La4/b;->a:Ljava/lang/String;

    goto/16 :goto_d

    :pswitch_19b  #0x5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, La4/b;->d:J

    goto/16 :goto_d

    :pswitch_1a3  #0x4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, La4/b;->e:J

    goto/16 :goto_d

    :pswitch_1ab  #0x3
    iput-boolean v7, v0, La4/b;->v:Z

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, La4/b;->u:J

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, La4/b;->a:Ljava/lang/String;

    goto/16 :goto_d

    :pswitch_1ca  #0x2
    iput-boolean v7, v0, La4/b;->v:Z

    iput-boolean v7, v0, La4/b;->w:Z

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, La4/b;->a:Ljava/lang/String;

    :cond_1dc
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_1e2
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, La4/b;->u:J
    :try_end_1ef
    .catch Ljava/lang/NumberFormatException; {:try_start_1e2 .. :try_end_1ef} :catch_1f1

    goto/16 :goto_d

    :catch_1f1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupted TAR archive. GNU.sparse.realsize header for "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v0, La4/b;->a:Ljava/lang/String;

    invoke-static {p1, p2, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_203  #0x1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_21b

    if-ltz v2, :cond_20f

    iput v2, v0, La4/b;->r:I

    goto/16 :goto_d

    :cond_20f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minor device number is out of range: "

    invoke-static {p1, v2}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupted TAR archive. Dev-Minor is negative"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_223  #0x0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_23b

    if-ltz v2, :cond_22f

    iput v2, v0, La4/b;->q:I

    goto/16 :goto_d

    :cond_22f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Major device number is out of range: "

    invoke-static {p1, v2}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Corrupted TAR archive. Dev-Major is negative"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_243
    iget-object p0, p0, La4/c;->m:La4/b;

    iput-object p2, p0, La4/b;->s:Ljava/util/List;

    return-void

    :sswitch_data_248
    .sparse-switch
        -0x7240fdec -> :sswitch_ef
        -0x723d4bf0 -> :sswitch_e4
        -0x108a42f3 -> :sswitch_db
        -0x98f3691 -> :sswitch_d2
        0x18fc2 -> :sswitch_c7
        0x1c450 -> :sswitch_bc
        0x346425 -> :sswitch_b1
        0x35e001 -> :sswitch_a6
        0x58d3aae -> :sswitch_99
        0x5a969b0 -> :sswitch_8b
        0x5deef72 -> :sswitch_7d
        0x63654ba -> :sswitch_6f
        0x6a43880 -> :sswitch_61
        0x122211dd -> :sswitch_53
        0x1fa1f206 -> :sswitch_45
        0x473a871f -> :sswitch_37
    .end sparse-switch

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_223  #00000000
        :pswitch_203  #00000001
        :pswitch_1ca  #00000002
        :pswitch_1ab  #00000003
        :pswitch_1a3  #00000004
        :pswitch_19b  #00000005
        :pswitch_191  #00000006
        :pswitch_17a  #00000007
        :pswitch_16e  #00000008
        :pswitch_162  #00000009
        :pswitch_15e  #0000000a
        :pswitch_14d  #0000000b
        :pswitch_149  #0000000c
        :pswitch_13d  #0000000d
        :pswitch_10b  #0000000e
        :pswitch_107  #0000000f
    .end packed-switch
.end method

.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, La4/c;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, La4/c;->m:La4/b;

    invoke-virtual {v0}, La4/b;->c()J

    move-result-wide v0

    iget-wide v2, p0, La4/c;->i:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    const p0, 0x7fffffff

    return p0

    :cond_1c
    iget-object v0, p0, La4/c;->m:La4/b;

    invoke-virtual {v0}, La4/b;->c()J

    move-result-wide v0

    iget-wide v2, p0, La4/c;->i:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final b()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, La4/c;->l:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La4/c;->k:Ljava/util/List;

    iget-object v1, p0, La4/c;->m:La4/b;

    iget-object v2, v1, La4/b;->s:Ljava/util/List;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_b3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto/16 :goto_b3

    :cond_1b
    iget-object v2, v1, La4/b;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v6, Lcom/android/common/util/v;->i:Lcom/android/common/util/v;

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v6, La4/a;->a:La4/a;

    invoke-static {v6}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_40
    if-ge v7, v6, :cond_90

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La4/g;

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v6, :cond_72

    iget-wide v9, v8, La4/g;->a:J

    iget-wide v11, v8, La4/g;->b:J

    add-long/2addr v9, v11

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La4/g;

    iget-wide v11, v11, La4/g;->a:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_5e

    goto :goto_72

    :cond_5e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupted TAR archive. Sparse blocks for "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, La4/b;->a:Ljava/lang/String;

    const-string v2, " overlap each other."

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    :goto_72
    iget-wide v9, v8, La4/g;->a:J

    iget-wide v11, v8, La4/g;->b:J

    add-long/2addr v9, v11

    cmp-long v8, v9, v4

    if-ltz v8, :cond_7c

    goto :goto_40

    :cond_7c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unreadable TAR archive. Offset and numbytes for sparse block in "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, La4/b;->a:Ljava/lang/String;

    const-string v2, " too large."

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b7

    add-int/2addr v6, v0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/g;

    iget-wide v6, v0, La4/g;->a:J

    iget-wide v8, v0, La4/g;->b:J

    add-long/2addr v6, v8

    invoke-virtual {v1}, La4/b;->c()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_ab

    goto :goto_b7

    :cond_ab
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupted TAR archive. Sparse block extends beyond real size of the entry"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b3
    :goto_b3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_b7
    :goto_b7
    new-instance v0, La4/f;

    invoke-direct {v0}, La4/f;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v6, v4

    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La4/g;

    iget-wide v8, v2, La4/g;->a:J

    sub-long/2addr v8, v6

    cmp-long v6, v8, v4

    if-ltz v6, :cond_f8

    if-lez v6, :cond_e0

    iget-object v6, p0, La4/c;->k:Ljava/util/List;

    new-instance v7, Lc4/b;

    invoke-direct {v7, v0, v8, v9}, Lc4/b;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e0
    iget-wide v6, v2, La4/g;->b:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_f2

    iget-object v8, p0, La4/c;->k:Ljava/util/List;

    new-instance v9, Lc4/b;

    iget-object v10, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-direct {v9, v10, v6, v7}, Lc4/b;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f2
    iget-wide v6, v2, La4/g;->a:J

    iget-wide v8, v2, La4/g;->b:J

    add-long/2addr v6, v8

    goto :goto_c1

    :cond_f8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupted struct sparse detected"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_100
    iget-object v0, p0, La4/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10a

    iput v3, p0, La4/c;->l:I

    :cond_10a
    return-void
.end method

.method public c(J)V
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, La4/c;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, La4/c;->b:J

    :cond_b
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La4/c;->k:Ljava/util/List;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :cond_18
    iget-object p0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final d(JJJ)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, La4/c;->j:Ljava/io/InputStream;

    instance-of p0, p0, Ljava/io/FileInputStream;

    if-eqz p0, :cond_a

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_a
    cmp-long p0, p3, p5

    if-nez p0, :cond_f

    return-wide p3

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Truncated TAR archive"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_5
    iget-object v1, p0, La4/c;->c:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_14

    iget-object v3, p0, La4/c;->c:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_14
    invoke-virtual {p0}, La4/c;->f()La4/b;

    iget-object p0, p0, La4/c;->m:La4/b;

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    :goto_22
    if-lez v0, :cond_2d

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_2d

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_2d
    array-length v1, p0

    if-eq v0, v1, :cond_36

    new-array v1, v0, [B

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    :cond_36
    return-object p0
.end method

.method public f()La4/b;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La4/c;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, La4/c;->m:La4/b;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4a

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {p0, v4, v5}, Lc4/e;->b(Ljava/io/InputStream;J)J

    invoke-virtual {p0}, La4/c;->h()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-wide v4, p0, La4/c;->h:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_4a

    iget v0, p0, La4/c;->d:I

    int-to-long v6, v0

    rem-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4a

    iget-object v0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v5, v0

    iget-wide v7, p0, La4/c;->h:J

    iget v0, p0, La4/c;->d:I

    int-to-long v9, v0

    div-long v11, v7, v9

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    mul-long/2addr v11, v9

    sub-long v9, v11, v7

    iget-object v0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-static {v0, v9, v10}, Lc4/e;->b(Ljava/io/InputStream;J)J

    move-result-wide v7

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, La4/c;->d(JJJ)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, La4/c;->c(J)V

    :cond_4a
    invoke-virtual {p0}, La4/c;->g()[B

    move-result-object v8

    if-nez v8, :cond_53

    iput-object v1, p0, La4/c;->m:La4/b;

    return-object v1

    :cond_53
    :try_start_53
    new-instance v0, La4/b;

    iget-object v7, p0, La4/c;->o:Ljava/util/Map;

    iget-object v9, p0, La4/c;->n:Lb4/b;

    const/4 v11, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4}, La4/b;-><init>(Z)V
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_5e} :catch_15e

    const/4 v10, 0x0

    move-object v6, v0

    :try_start_60
    invoke-virtual/range {v6 .. v11}, La4/b;->k(Ljava/util/Map;[BLb4/b;ZZ)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_63} :catch_155

    :try_start_63
    iput-object v0, p0, La4/c;->m:La4/b;
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_65} :catch_15e

    iput-wide v2, p0, La4/c;->i:J

    iget-wide v2, v0, La4/b;->f:J

    iput-wide v2, p0, La4/c;->h:J

    iget-byte v0, v0, La4/b;->k:B

    const/16 v2, 0x4b

    const/4 v3, 0x1

    if-ne v0, v2, :cond_74

    move v0, v3

    goto :goto_75

    :cond_74
    move v0, v4

    :goto_75
    if-eqz v0, :cond_88

    invoke-virtual {p0}, La4/c;->e()[B

    move-result-object v0

    if-nez v0, :cond_7e

    return-object v1

    :cond_7e
    iget-object v2, p0, La4/c;->m:La4/b;

    iget-object v5, p0, La4/c;->n:Lb4/b;

    invoke-interface {v5, v0}, Lb4/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, La4/b;->l:Ljava/lang/String;

    :cond_88
    iget-object v0, p0, La4/c;->m:La4/b;

    iget-byte v0, v0, La4/b;->k:B

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_92

    move v0, v3

    goto :goto_93

    :cond_92
    move v0, v4

    :goto_93
    if-eqz v0, :cond_cb

    invoke-virtual {p0}, La4/c;->e()[B

    move-result-object v0

    if-nez v0, :cond_9c

    return-object v1

    :cond_9c
    iget-object v1, p0, La4/c;->n:Lb4/b;

    invoke-interface {v1, v0}, Lb4/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La4/c;->m:La4/b;

    invoke-virtual {v1, v0}, La4/b;->l(Ljava/lang/String;)V

    iget-object v1, p0, La4/c;->m:La4/b;

    invoke-virtual {v1}, La4/b;->d()Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cb

    iget-object v2, p0, La4/c;->m:La4/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, La4/b;->l(Ljava/lang/String;)V

    :cond_cb
    iget-object v0, p0, La4/c;->m:La4/b;

    invoke-virtual {v0}, La4/b;->e()Z

    move-result v0

    const-string v1, "Error detected parsing the pax header"

    if-eqz v0, :cond_ef

    iget-object v0, p0, La4/c;->p:Ljava/util/List;

    iget-object v2, p0, La4/c;->o:Ljava/util/Map;

    iget-wide v5, p0, La4/c;->h:J

    invoke-static {p0, v0, v2, v5, v6}, La4/h;->h(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, La4/c;->o:Ljava/util/Map;

    invoke-virtual {p0}, La4/c;->f()La4/b;

    iget-object v0, p0, La4/c;->m:La4/b;

    if-eqz v0, :cond_e9

    goto :goto_ef

    :cond_e9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ef
    :goto_ef
    :try_start_ef
    iget-object v0, p0, La4/c;->m:La4/b;

    iget-byte v0, v0, La4/b;->k:B

    const/16 v2, 0x78

    if-eq v0, v2, :cond_fe

    const/16 v2, 0x58

    if-ne v0, v2, :cond_fc

    goto :goto_fe

    :cond_fc
    move v0, v4

    goto :goto_ff

    :cond_fe
    :goto_fe
    move v0, v3

    :goto_ff
    if-eqz v0, :cond_105

    invoke-virtual {p0}, La4/c;->j()V

    goto :goto_114

    :cond_105
    iget-object v0, p0, La4/c;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_114

    iget-object v0, p0, La4/c;->o:Ljava/util/Map;

    iget-object v2, p0, La4/c;->p:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, La4/c;->a(Ljava/util/Map;Ljava/util/List;)V
    :try_end_114
    .catch Ljava/lang/NumberFormatException; {:try_start_ef .. :try_end_114} :catch_14e

    :cond_114
    :goto_114
    iget-object v0, p0, La4/c;->m:La4/b;

    iget-byte v1, v0, La4/b;->k:B

    const/16 v2, 0x53

    if-ne v1, v2, :cond_11d

    move v4, v3

    :cond_11d
    if-eqz v4, :cond_147

    iget-boolean v0, v0, La4/b;->t:Z

    if-eqz v0, :cond_144

    :cond_123
    invoke-virtual {p0}, La4/c;->g()[B

    move-result-object v0

    if-eqz v0, :cond_13c

    new-instance v1, La4/e;

    invoke-direct {v1, v0}, La4/e;-><init>([B)V

    iget-object v0, p0, La4/c;->m:La4/b;

    iget-object v0, v0, La4/b;->s:Ljava/util/List;

    iget-object v2, v1, La4/e;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, v1, La4/e;->a:Z

    if-nez v0, :cond_123

    goto :goto_144

    :cond_13c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "premature end of tar archive. Didn\'t find extended_header after header with extended flag."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_144
    :goto_144
    invoke-virtual {p0}, La4/c;->b()V

    :cond_147
    iget-object v0, p0, La4/c;->m:La4/b;

    iget-wide v1, v0, La4/b;->f:J

    iput-wide v1, p0, La4/c;->h:J

    return-object v0

    :catch_14e
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_155
    move-exception p0

    :try_start_156
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive."

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_156 .. :try_end_15e} :catch_15e

    :catch_15e
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error detected parsing the header"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, La4/c;->k()[B

    move-result-object v0

    invoke-virtual {p0, v0}, La4/c;->i([B)Z

    move-result v1

    iput-boolean v1, p0, La4/c;->g:Z

    if-eqz v1, :cond_61

    if-eqz v0, :cond_61

    iget-object v0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, La4/c;->j:Ljava/io/InputStream;

    iget v2, p0, La4/c;->d:I

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, La4/c;->k()[B

    move-result-object v1

    invoke-virtual {p0, v1}, La4/c;->i([B)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_50

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    iget v0, p0, La4/c;->d:I

    int-to-long v0, v0

    iget-wide v2, p0, La4/c;->b:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, La4/c;->b:J

    iget-object v0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_38
    iget-wide v0, p0, La4/c;->b:J

    iget v2, p0, La4/c;->f:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_4e

    iget-object v4, p0, La4/c;->j:Ljava/io/InputStream;

    sub-long/2addr v2, v0

    invoke-static {v4, v2, v3}, Lc4/e;->b(Ljava/io/InputStream;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La4/c;->c(J)V

    :cond_4e
    const/4 v0, 0x0

    goto :goto_61

    :catchall_50
    move-exception v1

    if-eqz v0, :cond_60

    iget v0, p0, La4/c;->d:I

    int-to-long v2, v0

    iget-wide v4, p0, La4/c;->b:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, La4/c;->b:J

    iget-object p0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_60
    throw v1

    :cond_61
    :goto_61
    return-object v0
.end method

.method public final h()Z
    .registers 1

    iget-object p0, p0, La4/c;->m:La4/b;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, La4/b;->d()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public i([B)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    iget p0, p0, La4/c;->d:I

    move v2, v0

    :goto_7
    if-ge v2, p0, :cond_12

    aget-byte v3, p1, v2

    if-eqz v3, :cond_f

    move p0, v0

    goto :goto_13

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    move p0, v1

    :goto_13
    if-eqz p0, :cond_16

    :cond_15
    move v0, v1

    :cond_16
    return v0
.end method

.method public final j()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, La4/c;->o:Ljava/util/Map;

    iget-wide v3, v0, La4/c;->h:J

    invoke-static {v0, v1, v2, v3, v4}, La4/h;->h(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "GNU.sparse.map"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_8b

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    rem-int/lit8 v5, v5, 0x2

    if-eq v5, v6, :cond_83

    move v5, v9

    :goto_37
    array-length v10, v3

    if-ge v5, v10, :cond_7b

    :try_start_3a
    aget-object v10, v3, v5

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_40} :catch_73

    cmp-long v12, v10, v7

    if-ltz v12, :cond_6b

    add-int/lit8 v12, v5, 0x1

    :try_start_46
    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4c} :catch_63

    cmp-long v14, v12, v7

    if-ltz v14, :cond_5b

    new-instance v14, La4/g;

    invoke-direct {v14, v10, v11, v12, v13}, La4/g;-><init>(JJ)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x2

    goto :goto_37

    :cond_5b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Sparse struct numbytes contains negative value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Sparse struct numbytes contains a non-numeric value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Sparse struct offset contains negative value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Sparse struct offset contains a non-numeric value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8b

    :cond_83
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Bad format in GNU.sparse.map PAX Header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    :goto_8b
    invoke-virtual/range {p0 .. p0}, La4/c;->f()La4/b;

    iget-object v3, v0, La4/c;->m:La4/b;

    if-eqz v3, :cond_108

    invoke-virtual {v0, v2, v1}, La4/c;->a(Ljava/util/Map;Ljava/util/List;)V

    iget-object v1, v0, La4/c;->m:La4/b;

    iget-boolean v1, v1, La4/b;->w:Z

    if-eqz v1, :cond_104

    iget-object v1, v0, La4/c;->j:Ljava/io/InputStream;

    iget v2, v0, La4/c;->d:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, La4/h;->i(Ljava/io/InputStream;)[J

    move-result-object v4

    aget-wide v10, v4, v9

    cmp-long v5, v10, v7

    if-ltz v5, :cond_fc

    aget-wide v4, v4, v6

    add-long/2addr v4, v7

    :goto_b1
    const-wide/16 v12, 0x1

    sub-long v12, v10, v12

    cmp-long v10, v10, v7

    if-lez v10, :cond_f1

    invoke-static {v1}, La4/h;->i(Ljava/io/InputStream;)[J

    move-result-object v10

    aget-wide v14, v10, v9

    cmp-long v11, v14, v7

    if-ltz v11, :cond_e9

    aget-wide v10, v10, v6

    add-long/2addr v4, v10

    invoke-static {v1}, La4/h;->i(Ljava/io/InputStream;)[J

    move-result-object v10

    move-wide/from16 v16, v12

    aget-wide v11, v10, v9

    cmp-long v13, v11, v7

    if-ltz v13, :cond_e1

    aget-wide v18, v10, v6

    add-long v4, v4, v18

    new-instance v10, La4/g;

    invoke-direct {v10, v14, v15, v11, v12}, La4/g;-><init>(JJ)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v16

    goto :goto_b1

    :cond_e1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Sparse header block numbytes contains negative value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Sparse header block offset contains negative value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f1
    int-to-long v6, v2

    rem-long/2addr v4, v6

    sub-long/2addr v6, v4

    invoke-static {v1, v6, v7}, Lc4/e;->b(Ljava/io/InputStream;J)J

    iget-object v1, v0, La4/c;->m:La4/b;

    iput-object v3, v1, La4/b;->s:Ljava/util/List;

    goto :goto_104

    :cond_fc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted TAR archive. Negative value in sparse headers block"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    :goto_104
    invoke-virtual/range {p0 .. p0}, La4/c;->b()V

    return-void

    :cond_108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "premature end of tar archive. Didn\'t find any entry after PAX header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La4/c;->j:Ljava/io/InputStream;

    iget-object v1, p0, La4/c;->e:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lc4/e;->a(Ljava/io/InputStream;[BII)I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, La4/c;->c(J)V

    iget v1, p0, La4/c;->d:I

    if-eq v0, v1, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    iget-object p0, p0, La4/c;->e:[B

    return-object p0
.end method

.method public final l([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La4/c;->k:Ljava/util/List;

    if-eqz v0, :cond_52

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_52

    :cond_b
    iget v0, p0, La4/c;->l:I

    iget-object v1, p0, La4/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_17

    return v2

    :cond_17
    iget-object v0, p0, La4/c;->k:Ljava/util/List;

    iget v1, p0, La4/c;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v1, p0, La4/c;->l:I

    iget-object v3, p0, La4/c;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_32

    return v0

    :cond_32
    if-ne v0, v2, :cond_3f

    iget v0, p0, La4/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La4/c;->l:I

    invoke-virtual {p0, p1, p2, p3}, La4/c;->l([BII)I

    move-result p0

    return p0

    :cond_3f
    if-ge v0, p3, :cond_51

    iget v1, p0, La4/c;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La4/c;->l:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, La4/c;->l([BII)I

    move-result p0

    if-ne p0, v2, :cond_50

    return v0

    :cond_50
    add-int/2addr v0, p0

    :cond_51
    return v0

    :cond_52
    :goto_52
    iget-object p0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .registers 4

    iget-object v0, p0, La4/c;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, La4/c;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, La4/c;->a:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-boolean v0, p0, La4/c;->g:Z

    const/4 v1, -0x1

    if-nez v0, :cond_5c

    invoke-virtual {p0}, La4/c;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5c

    :cond_10
    iget-object v0, p0, La4/c;->m:La4/b;

    if-eqz v0, :cond_54

    iget-wide v2, p0, La4/c;->i:J

    invoke-virtual {v0}, La4/b;->c()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {p0}, La4/c;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, La4/c;->m:La4/b;

    invoke-virtual {v0}, La4/b;->g()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, p1, p2, p3}, La4/c;->l([BII)I

    move-result p1

    goto :goto_3a

    :cond_34
    iget-object v0, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    :goto_3a
    if-ne p1, v1, :cond_4a

    if-gtz p3, :cond_42

    const/4 p2, 0x1

    iput-boolean p2, p0, La4/c;->g:Z

    goto :goto_53

    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Truncated TAR archive"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    int-to-long p2, p1

    invoke-virtual {p0, p2, p3}, La4/c;->c(J)V

    iget-wide v0, p0, La4/c;->i:J

    add-long/2addr v0, p2

    iput-wide v0, p0, La4/c;->i:J

    :goto_53
    return p1

    :cond_54
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current tar entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    :goto_5c
    return v1
.end method

.method public declared-synchronized reset()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_7c

    invoke-virtual {p0}, La4/c;->h()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_7c

    :cond_e
    iget-object v2, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v4, v2

    iget-object v2, p0, La4/c;->m:La4/b;

    invoke-virtual {v2}, La4/b;->c()J

    move-result-wide v2

    iget-wide v6, p0, La4/c;->i:J

    sub-long/2addr v2, v6

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-object p1, p0, La4/c;->m:La4/b;

    invoke-virtual {p1}, La4/b;->g()Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-static {p1, v8, v9}, Lc4/e;->b(Ljava/io/InputStream;J)J

    move-result-wide v6

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, La4/c;->d(JJJ)J

    move-result-wide p1

    goto :goto_73

    :cond_36
    iget-object p1, p0, La4/c;->k:Ljava/util/List;

    if-eqz p1, :cond_6d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_6d

    :cond_41
    :goto_41
    cmp-long p1, v0, v8

    if-gez p1, :cond_6b

    iget p1, p0, La4/c;->l:I

    iget-object p2, p0, La4/c;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_6b

    iget-object p1, p0, La4/c;->k:Ljava/util/List;

    iget p2, p0, La4/c;->l:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    sub-long v2, v8, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    cmp-long p1, v0, v8

    if-gez p1, :cond_41

    iget p1, p0, La4/c;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La4/c;->l:I

    goto :goto_41

    :cond_6b
    move-wide p1, v0

    goto :goto_73

    :cond_6d
    :goto_6d
    iget-object p1, p0, La4/c;->j:Ljava/io/InputStream;

    invoke-virtual {p1, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    :goto_73
    invoke-virtual {p0, p1, p2}, La4/c;->c(J)V

    iget-wide v0, p0, La4/c;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, La4/c;->i:J

    return-wide p1

    :cond_7c
    :goto_7c
    return-wide v0
.end method
