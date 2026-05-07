.class public final Lp/e;
.super Lp/c;
.source ""


# static fields
.field public static final l:Lokio/ByteString;

.field public static final m:Lokio/ByteString;

.field public static final n:Lokio/ByteString;

.field public static final o:Lokio/ByteString;

.field public static final p:Lokio/ByteString;


# instance fields
.field public final f:Lokio/BufferedSource;

.field public final g:Lokio/Buffer;

.field public h:I

.field public i:J

.field public j:I

.field public k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lp/e;->l:Lokio/ByteString;

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lp/e;->m:Lokio/ByteString;

    const-string/jumbo v0, "{}[]:, \n\t\r\f/\\;#="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lp/e;->n:Lokio/ByteString;

    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lp/e;->o:Lokio/ByteString;

    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lp/e;->p:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 3

    invoke-direct {p0}, Lp/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp/e;->h:I

    const-string/jumbo v0, "source == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lp/e;->f:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lp/e;->g:Lokio/Buffer;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lp/c;->l(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp/c;->l(I)V

    iget-object v1, p0, Lp/c;->d:[I

    iget v2, p0, Lp/c;->a:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lp/e;->h:I

    return-void

    :cond_1a
    new-instance v0, Lp/a;

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lp/c;->l(I)V

    const/4 v0, 0x0

    iput v0, p0, Lp/e;->h:I

    return-void

    :cond_13
    new-instance v0, Lp/a;

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lp/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lp/c;->a:I

    iget-object v1, p0, Lp/c;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lp/e;->h:I

    return-void

    :cond_1f
    new-instance v0, Lp/a;

    const-string v1, "Expected END_ARRAY but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lp/e;->h:I

    iget-object v1, p0, Lp/c;->b:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lp/c;->a:I

    iget-object v0, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    iget-object p0, p0, Lp/e;->f:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method

.method public d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    iget v0, p0, Lp/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lp/c;->a:I

    iget-object v1, p0, Lp/c;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lp/c;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lp/e;->h:I

    return-void

    :cond_24
    new-instance v0, Lp/a;

    const-string v1, "Expected END_OBJECT but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/4 p0, 0x2

    if-eq v0, p0, :cond_14

    const/4 p0, 0x4

    if-eq v0, p0, :cond_14

    const/16 p0, 0x12

    if-eq v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public f()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    iput v2, p0, Lp/e;->h:I

    iget-object v0, p0, Lp/c;->d:[I

    iget p0, p0, Lp/c;->a:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    iput v2, p0, Lp/e;->h:I

    iget-object v0, p0, Lp/c;->d:[I

    iget p0, p0, Lp/c;->a:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    :cond_2a
    new-instance v0, Lp/a;

    const-string v1, "Expected a boolean but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()D
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    iput v2, p0, Lp/e;->h:I

    iget-object v0, p0, Lp/c;->d:[I

    iget v1, p0, Lp/c;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lp/e;->i:J

    long-to-double v0, v0

    return-wide v0

    :cond_1f
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lp/e;->g:Lokio/Buffer;

    iget v1, p0, Lp/e;->j:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/e;->k:Ljava/lang/String;

    goto :goto_5c

    :cond_35
    const/16 v1, 0x9

    if-ne v0, v1, :cond_42

    sget-object v0, Lp/e;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/e;->k:Ljava/lang/String;

    goto :goto_5c

    :cond_42
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4f

    sget-object v0, Lp/e;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/e;->k:Ljava/lang/String;

    goto :goto_5c

    :cond_4f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    invoke-virtual {p0}, Lp/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/e;->k:Ljava/lang/String;

    goto :goto_5c

    :cond_5a
    if-ne v0, v4, :cond_c0

    :goto_5c
    iput v4, p0, Lp/e;->h:I

    :try_start_5e
    iget-object v0, p0, Lp/e;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_64} :catch_a3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_82

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_82

    const/4 v3, 0x0

    iput-object v3, p0, Lp/e;->k:Ljava/lang/String;

    iput v2, p0, Lp/e;->h:I

    iget-object v2, p0, Lp/c;->d:[I

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0

    :cond_82
    new-instance v2, Lp/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lp/b;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_a3
    new-instance v0, Lp/a;

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lp/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c0
    new-instance v0, Lp/a;

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_45

    iget-wide v0, p0, Lp/e;->i:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-nez v0, :cond_28

    iput v2, p0, Lp/e;->h:I

    iget-object v0, p0, Lp/c;->d:[I

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_28
    new-instance v0, Lp/a;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lp/e;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lp/e;->g:Lokio/Buffer;

    iget v1, p0, Lp/e;->j:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp/e;->k:Ljava/lang/String;

    goto :goto_a6

    :cond_57
    const/16 v1, 0x9

    if-eq v0, v1, :cond_82

    const/16 v6, 0x8

    if-ne v0, v6, :cond_60

    goto :goto_82

    :cond_60
    if-ne v0, v5, :cond_63

    goto :goto_a6

    :cond_63
    new-instance v0, Lp/a;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    :goto_82
    if-ne v0, v1, :cond_8b

    sget-object v0, Lp/e;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    :cond_8b
    sget-object v0, Lp/e;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    iput-object v0, p0, Lp/e;->k:Ljava/lang/String;

    :try_start_93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lp/e;->h:I

    iget-object v1, p0, Lp/c;->d:[I

    iget v6, p0, Lp/c;->a:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_a5} :catch_a6

    return v0

    :catch_a6
    :goto_a6
    iput v5, p0, Lp/e;->h:I

    :try_start_a8
    iget-object v0, p0, Lp/e;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_ae} :catch_e3

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v0, v6, v0

    if-nez v0, :cond_c6

    const/4 v0, 0x0

    iput-object v0, p0, Lp/e;->k:Ljava/lang/String;

    iput v2, p0, Lp/e;->h:I

    iget-object v0, p0, Lp/c;->d:[I

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_c6
    new-instance v0, Lp/a;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lp/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_e3
    new-instance v0, Lp/a;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lp/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lp/e;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_11
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    sget-object v0, Lp/e;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    sget-object v0, Lp/e;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_27
    const/16 v1, 0xf

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lp/e;->k:Ljava/lang/String;

    :goto_2d
    const/4 v1, 0x0

    iput v1, p0, Lp/e;->h:I

    iget-object v1, p0, Lp/c;->c:[Ljava/lang/String;

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_39
    new-instance v0, Lp/a;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lp/e;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_11
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    sget-object v0, Lp/e;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_1c
    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    sget-object v0, Lp/e;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->v(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lp/e;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lp/e;->k:Ljava/lang/String;

    goto :goto_49

    :cond_31
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    iget-wide v0, p0, Lp/e;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_3c
    const/16 v1, 0x11

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lp/e;->g:Lokio/Buffer;

    iget v1, p0, Lp/e;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_49
    const/4 v1, 0x0

    iput v1, p0, Lp/e;->h:I

    iget-object v1, p0, Lp/c;->d:[I

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_59
    new-instance v0, Lp/a;

    const-string v1, "Expected a string but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Lp/c$b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_11  #0x12
    sget-object p0, Lp/c$b;->j:Lp/c$b;

    return-object p0

    :pswitch_14  #0x10, 0x11
    sget-object p0, Lp/c$b;->g:Lp/c$b;

    return-object p0

    :pswitch_17  #0xc, 0xd, 0xe, 0xf
    sget-object p0, Lp/c$b;->e:Lp/c$b;

    return-object p0

    :pswitch_1a  #0x8, 0x9, 0xa, 0xb
    sget-object p0, Lp/c$b;->f:Lp/c$b;

    return-object p0

    :pswitch_1d  #0x7
    sget-object p0, Lp/c$b;->i:Lp/c$b;

    return-object p0

    :pswitch_20  #0x5, 0x6
    sget-object p0, Lp/c$b;->h:Lp/c$b;

    return-object p0

    :pswitch_23  #0x4
    sget-object p0, Lp/c$b;->b:Lp/c$b;

    return-object p0

    :pswitch_26  #0x3
    sget-object p0, Lp/c$b;->a:Lp/c$b;

    return-object p0

    :pswitch_29  #0x2
    sget-object p0, Lp/c$b;->d:Lp/c$b;

    return-object p0

    :pswitch_2c  #0x1
    sget-object p0, Lp/c$b;->c:Lp/c$b;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_1a  #00000009
        :pswitch_1a  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_17  #0000000d
        :pswitch_17  #0000000e
        :pswitch_17  #0000000f
        :pswitch_14  #00000010
        :pswitch_14  #00000011
        :pswitch_11  #00000012
    .end packed-switch
.end method

.method public m(Lp/c$a;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_54

    const/16 v1, 0xf

    if-le v0, v1, :cond_12

    goto :goto_54

    :cond_12
    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lp/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lp/e;->s(Ljava/lang/String;Lp/c$a;)I

    move-result p0

    return p0

    :cond_1b
    iget-object v0, p0, Lp/e;->f:Lokio/BufferedSource;

    iget-object v3, p1, Lp/c$a;->b:Lokio/Options;

    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v2, :cond_35

    const/4 v1, 0x0

    iput v1, p0, Lp/e;->h:I

    iget-object v1, p0, Lp/c;->c:[Ljava/lang/String;

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    iget-object p1, p1, Lp/c$a;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, p0

    return v0

    :cond_35
    iget-object v0, p0, Lp/c;->c:[Ljava/lang/String;

    iget v3, p0, Lp/c;->a:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lp/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lp/e;->s(Ljava/lang/String;Lp/c$a;)I

    move-result p1

    if-ne p1, v2, :cond_53

    iput v1, p0, Lp/e;->h:I

    iput-object v3, p0, Lp/e;->k:Ljava/lang/String;

    iget-object v1, p0, Lp/c;->c:[Ljava/lang/String;

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    :cond_53
    return p1

    :cond_54
    :goto_54
    return v2
.end method

.method public n()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lp/e;->h:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lp/e;->z()V

    goto :goto_28

    :cond_10
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    sget-object v0, Lp/e;->m:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->y(Lokio/ByteString;)V

    goto :goto_28

    :cond_1a
    const/16 v1, 0xc

    if-ne v0, v1, :cond_24

    sget-object v0, Lp/e;->l:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lp/e;->y(Lokio/ByteString;)V

    goto :goto_28

    :cond_24
    const/16 v1, 0xf

    if-ne v0, v1, :cond_37

    :goto_28
    const/4 v0, 0x0

    iput v0, p0, Lp/e;->h:I

    iget-object v0, p0, Lp/c;->c:[Ljava/lang/String;

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    const-string/jumbo v1, "null"

    aput-object v1, v0, p0

    return-void

    :cond_37
    new-instance v0, Lp/a;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    iget v2, p0, Lp/e;->h:I

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lp/e;->r()I

    move-result v2

    :cond_a
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_12

    invoke-virtual {p0, v4}, Lp/c;->l(I)V

    goto :goto_17

    :cond_12
    if-ne v2, v4, :cond_1b

    invoke-virtual {p0, v3}, Lp/c;->l(I)V

    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d4

    :cond_1b
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_4c

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2d

    iget v2, p0, Lp/c;->a:I

    sub-int/2addr v2, v4

    iput v2, p0, Lp/c;->a:I

    goto/16 :goto_d4

    :cond_2d
    new-instance v0, Lp/a;

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_79

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5a

    iget v2, p0, Lp/c;->a:I

    sub-int/2addr v2, v4

    iput v2, p0, Lp/c;->a:I

    goto/16 :goto_d4

    :cond_5a
    new-instance v0, Lp/a;

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    const/16 v3, 0xe

    if-eq v2, v3, :cond_d1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_82

    goto :goto_d1

    :cond_82
    const/16 v3, 0x9

    if-eq v2, v3, :cond_cb

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8b

    goto :goto_cb

    :cond_8b
    const/16 v3, 0x8

    if-eq v2, v3, :cond_c5

    const/16 v3, 0xc

    if-ne v2, v3, :cond_94

    goto :goto_c5

    :cond_94
    const/16 v3, 0x11

    if-ne v2, v3, :cond_a1

    iget-object v2, p0, Lp/e;->g:Lokio/Buffer;

    iget v3, p0, Lp/e;->j:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lokio/Buffer;->skip(J)V

    goto :goto_d4

    :cond_a1
    const/16 v3, 0x12

    if-eq v2, v3, :cond_a6

    goto :goto_d4

    :cond_a6
    new-instance v0, Lp/a;

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/e;->k()Lp/c$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c5
    :goto_c5
    sget-object v2, Lp/e;->l:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lp/e;->y(Lokio/ByteString;)V

    goto :goto_d4

    :cond_cb
    :goto_cb
    sget-object v2, Lp/e;->m:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lp/e;->y(Lokio/ByteString;)V

    goto :goto_d4

    :cond_d1
    :goto_d1
    invoke-virtual {p0}, Lp/e;->z()V

    :goto_d4
    iput v0, p0, Lp/e;->h:I

    if-nez v1, :cond_2

    iget-object v0, p0, Lp/c;->d:[I

    iget v1, p0, Lp/c;->a:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    iget-object p0, p0, Lp/c;->c:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string/jumbo v0, "null"

    aput-object v0, p0, v1

    return-void
.end method

.method public final q()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    const/4 p0, 0x0

    throw p0
.end method

.method public final r()I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lp/c;->b:[I

    iget v2, v0, Lp/c;->a:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/16 v5, 0x22

    const/16 v6, 0x5d

    const/16 v7, 0x3b

    const/16 v8, 0x2c

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    sub-int/2addr v2, v4

    aput v13, v1, v2

    goto :goto_82

    :cond_22
    if-ne v3, v13, :cond_40

    invoke-virtual {v0, v4}, Lp/e;->u(Z)I

    move-result v1

    iget-object v2, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    if-eq v1, v8, :cond_82

    if-eq v1, v7, :cond_3c

    if-ne v1, v6, :cond_36

    iput v15, v0, Lp/e;->h:I

    return v15

    :cond_36
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v16

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_40
    if-eq v3, v9, :cond_26b

    if-ne v3, v12, :cond_46

    goto/16 :goto_26b

    :cond_46
    if-ne v3, v15, :cond_66

    sub-int/2addr v2, v4

    aput v12, v1, v2

    invoke-virtual {v0, v4}, Lp/e;->u(Z)I

    move-result v1

    iget-object v2, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_82

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_62

    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v16

    :cond_62
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_66
    if-ne v3, v11, :cond_6c

    sub-int/2addr v2, v4

    aput v10, v1, v2

    goto :goto_82

    :cond_6c
    if-ne v3, v10, :cond_7e

    invoke-virtual {v0, v14}, Lp/e;->u(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7a

    const/16 v1, 0x12

    iput v1, v0, Lp/e;->h:I

    return v1

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_7e
    const/16 v1, 0x8

    if-eq v3, v1, :cond_263

    :cond_82
    :goto_82
    invoke-virtual {v0, v4}, Lp/e;->u(Z)I

    move-result v1

    if-eq v1, v5, :cond_259

    const/16 v2, 0x27

    if-eq v1, v2, :cond_255

    if-eq v1, v8, :cond_245

    if-eq v1, v7, :cond_245

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_23c

    if-eq v1, v6, :cond_232

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_22a

    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v5, 0x74

    if-eq v1, v5, :cond_cd

    const/16 v5, 0x54

    if-ne v1, v5, :cond_ab

    goto :goto_cd

    :cond_ab
    const/16 v5, 0x66

    if-eq v1, v5, :cond_c7

    const/16 v5, 0x46

    if-ne v1, v5, :cond_b4

    goto :goto_c7

    :cond_b4
    const/16 v5, 0x6e

    if-eq v1, v5, :cond_c0

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_bd

    goto :goto_c0

    :cond_bd
    move v6, v14

    goto/16 :goto_124

    :cond_c0
    :goto_c0
    const-string/jumbo v1, "null"

    const-string v5, "NULL"

    move v6, v10

    goto :goto_d3

    :cond_c7
    :goto_c7
    const-string v1, "false"

    const-string v5, "FALSE"

    move v6, v11

    goto :goto_d3

    :cond_cd
    :goto_cd
    const-string/jumbo v1, "true"

    const-string v5, "TRUE"

    move v6, v12

    :goto_d3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v4

    :goto_d8
    if-ge v8, v7, :cond_103

    iget-object v14, v0, Lp/e;->f:Lokio/BufferedSource;

    add-int/lit8 v10, v8, 0x1

    int-to-long v11, v10

    invoke-interface {v14, v11, v12}, Lokio/BufferedSource;->request(J)Z

    move-result v11

    if-nez v11, :cond_e7

    :goto_e5
    const/4 v6, 0x0

    goto :goto_124

    :cond_e7
    iget-object v11, v0, Lp/e;->g:Lokio/Buffer;

    move v14, v10

    int-to-long v9, v8

    invoke-virtual {v11, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_fc

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v9, v8, :cond_fc

    goto :goto_e5

    :cond_fc
    move v8, v14

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v14, 0x0

    goto :goto_d8

    :cond_103
    iget-object v1, v0, Lp/e;->f:Lokio/BufferedSource;

    add-int/lit8 v5, v7, 0x1

    int-to-long v8, v5

    invoke-interface {v1, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_11c

    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lp/e;->t(I)Z

    move-result v1

    if-eqz v1, :cond_11c

    goto :goto_e5

    :cond_11c
    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->skip(J)V

    iput v6, v0, Lp/e;->h:I

    :goto_124
    if-eqz v6, :cond_127

    return v6

    :cond_127
    move-wide v7, v2

    move v6, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_12c
    iget-object v10, v0, Lp/e;->f:Lokio/BufferedSource;

    add-int/lit8 v11, v1, 0x1

    int-to-long v2, v11

    invoke-interface {v10, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-nez v2, :cond_13a

    move v2, v13

    goto/16 :goto_1b0

    :cond_13a
    iget-object v2, v0, Lp/e;->g:Lokio/Buffer;

    int-to-long v12, v1

    invoke-virtual {v2, v12, v13}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v12, 0x2b

    if-eq v2, v12, :cond_201

    const/16 v12, 0x45

    if-eq v2, v12, :cond_1f7

    const/16 v12, 0x65

    if-eq v2, v12, :cond_1f7

    const/16 v12, 0x2d

    if-eq v2, v12, :cond_1eb

    const/16 v12, 0x2e

    if-eq v2, v12, :cond_1e4

    const/16 v12, 0x30

    if-lt v2, v12, :cond_1a9

    const/16 v12, 0x39

    if-le v2, v12, :cond_15e

    goto :goto_1a9

    :cond_15e
    if-eq v5, v4, :cond_19f

    if-nez v5, :cond_163

    goto :goto_19f

    :cond_163
    const/4 v1, 0x2

    if-ne v5, v1, :cond_18d

    const-wide/16 v12, 0x0

    cmp-long v1, v7, v12

    if-nez v1, :cond_16e

    goto/16 :goto_20e

    :cond_16e
    const-wide/16 v12, 0xa

    mul-long/2addr v12, v7

    add-int/lit8 v2, v2, -0x30

    int-to-long v1, v2

    sub-long/2addr v12, v1

    const-wide v1, -0xcccccccccccccccL

    cmp-long v1, v7, v1

    if-gtz v1, :cond_187

    if-nez v1, :cond_185

    cmp-long v1, v12, v7

    if-gez v1, :cond_185

    goto :goto_187

    :cond_185
    const/4 v1, 0x0

    goto :goto_188

    :cond_187
    :goto_187
    move v1, v4

    :goto_188
    and-int/2addr v1, v6

    move v6, v1

    move-wide v7, v12

    const/4 v3, 0x6

    goto :goto_1a6

    :cond_18d
    const/4 v1, 0x3

    if-ne v5, v1, :cond_195

    move v5, v15

    const/4 v2, 0x7

    const/4 v3, 0x6

    goto/16 :goto_208

    :cond_195
    const/4 v1, 0x5

    const/4 v3, 0x6

    if-eq v5, v1, :cond_19b

    if-ne v5, v3, :cond_1a6

    :cond_19b
    const/4 v2, 0x7

    const/4 v5, 0x7

    goto/16 :goto_208

    :cond_19f
    :goto_19f
    const/4 v3, 0x6

    add-int/lit8 v2, v2, -0x30

    neg-int v1, v2

    int-to-long v1, v1

    move-wide v7, v1

    const/4 v5, 0x2

    :cond_1a6
    :goto_1a6
    const/4 v2, 0x7

    goto/16 :goto_208

    :cond_1a9
    :goto_1a9
    invoke-virtual {v0, v2}, Lp/e;->t(I)Z

    move-result v2

    if-nez v2, :cond_20e

    const/4 v2, 0x2

    :goto_1b0
    if-ne v5, v2, :cond_1d6

    if-eqz v6, :cond_1d5

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v7, v2

    if-nez v2, :cond_1bc

    if-eqz v9, :cond_1d5

    :cond_1bc
    const-wide/16 v2, 0x0

    cmp-long v4, v7, v2

    if-nez v4, :cond_1c4

    if-nez v9, :cond_1d5

    :cond_1c4
    if-eqz v9, :cond_1c7

    goto :goto_1c8

    :cond_1c7
    neg-long v7, v7

    :goto_1c8
    iput-wide v7, v0, Lp/e;->i:J

    iget-object v2, v0, Lp/e;->g:Lokio/Buffer;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    const/16 v14, 0x10

    iput v14, v0, Lp/e;->h:I

    goto :goto_20f

    :cond_1d5
    const/4 v2, 0x2

    :cond_1d6
    if-eq v5, v2, :cond_1dd

    if-eq v5, v15, :cond_1dd

    const/4 v2, 0x7

    if-ne v5, v2, :cond_20e

    :cond_1dd
    iput v1, v0, Lp/e;->j:I

    const/16 v14, 0x11

    iput v14, v0, Lp/e;->h:I

    goto :goto_20f

    :cond_1e4
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-ne v5, v1, :cond_20e

    const/4 v1, 0x3

    goto :goto_207

    :cond_1eb
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-nez v5, :cond_1f3

    move v5, v4

    move v9, v5

    goto :goto_208

    :cond_1f3
    const/4 v13, 0x5

    if-ne v5, v13, :cond_20e

    goto :goto_206

    :cond_1f7
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v13, 0x5

    if-eq v5, v1, :cond_1ff

    if-ne v5, v15, :cond_20e

    :cond_1ff
    move v5, v13

    goto :goto_208

    :cond_201
    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v13, 0x5

    if-ne v5, v13, :cond_20e

    :goto_206
    move v1, v3

    :goto_207
    move v5, v1

    :goto_208
    move v1, v11

    const-wide/16 v2, 0x0

    const/4 v13, 0x2

    goto/16 :goto_12c

    :cond_20e
    :goto_20e
    const/4 v14, 0x0

    :goto_20f
    if-eqz v14, :cond_212

    return v14

    :cond_212
    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {v0, v1}, Lp/e;->t(I)Z

    move-result v1

    if-nez v1, :cond_226

    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v16

    :cond_226
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_22a
    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v4, v0, Lp/e;->h:I

    return v4

    :cond_232
    if-ne v3, v4, :cond_245

    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v15, v0, Lp/e;->h:I

    return v15

    :cond_23c
    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x3

    iput v1, v0, Lp/e;->h:I

    return v1

    :cond_245
    if-eq v3, v4, :cond_251

    const/4 v1, 0x2

    if-ne v3, v1, :cond_24b

    goto :goto_251

    :cond_24b
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v16

    :cond_251
    :goto_251
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_255
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_259
    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0x9

    iput v1, v0, Lp/e;->h:I

    return v1

    :cond_263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26b
    :goto_26b
    sub-int/2addr v2, v4

    aput v15, v1, v2

    const/16 v1, 0x7d

    const/4 v2, 0x5

    if-ne v3, v2, :cond_290

    invoke-virtual {v0, v4}, Lp/e;->u(Z)I

    move-result v2

    iget-object v6, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    if-eq v2, v8, :cond_290

    if-eq v2, v7, :cond_28c

    if-ne v2, v1, :cond_286

    const/4 v1, 0x2

    iput v1, v0, Lp/e;->h:I

    return v1

    :cond_286
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v16

    :cond_28c
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_290
    invoke-virtual {v0, v4}, Lp/e;->u(Z)I

    move-result v2

    if-eq v2, v5, :cond_2bb

    const/16 v4, 0x27

    if-eq v2, v4, :cond_2b2

    if-ne v2, v1, :cond_2ae

    const/4 v1, 0x5

    if-eq v3, v1, :cond_2a8

    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x2

    iput v1, v0, Lp/e;->h:I

    return v1

    :cond_2a8
    const-string v1, "Expected name"

    invoke-virtual {v0, v1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v16

    :cond_2ae
    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_2b2
    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-virtual/range {p0 .. p0}, Lp/e;->q()V

    throw v16

    :cond_2bb
    iget-object v1, v0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0xd

    iput v1, v0, Lp/e;->h:I

    return v1
.end method

.method public final s(Ljava/lang/String;Lp/c$a;)I
    .registers 7

    iget-object v0, p2, Lp/c$a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1f

    iget-object v3, p2, Lp/c$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iput v1, p0, Lp/e;->h:I

    iget-object p2, p0, Lp/c;->c:[Ljava/lang/String;

    iget p0, p0, Lp/c;->a:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, p2, p0

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public final t(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3e

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3e

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3e

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x23

    if-eq p1, v0, :cond_39

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_39

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_39

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_39

    packed-switch p1, :pswitch_data_40

    const/4 p0, 0x1

    return p0

    :cond_39
    :pswitch_39  #0x5c
    invoke-virtual {p0}, Lp/e;->q()V

    const/4 p0, 0x0

    throw p0

    :cond_3e
    :pswitch_3e  #0x5b, 0x5d
    const/4 p0, 0x0

    return p0

    :pswitch_data_40
    .packed-switch 0x5b
        :pswitch_3e  #0000005b
        :pswitch_39  #0000005c
        :pswitch_3e  #0000005d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "JsonReader("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lp/e;->f:Lokio/BufferedSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lp/e;->f:Lokio/BufferedSource;

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v2

    invoke-interface {v1, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lp/e;->g:Lokio/Buffer;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_49

    const/16 v1, 0x20

    if-eq v0, v1, :cond_49

    const/16 v1, 0xd

    if-eq v0, v1, :cond_49

    const/16 v1, 0x9

    if-ne v0, v1, :cond_24

    goto :goto_49

    :cond_24
    iget-object p1, p0, Lp/e;->g:Lokio/Buffer;

    add-int/lit8 v2, v2, -0x1

    int-to-long v1, v2

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->skip(J)V

    const/16 p1, 0x2f

    const/4 v1, 0x0

    if-ne v0, p1, :cond_40

    iget-object p1, p0, Lp/e;->f:Lokio/BufferedSource;

    const-wide/16 v2, 0x2

    invoke-interface {p1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result p1

    if-nez p1, :cond_3c

    return v0

    :cond_3c
    invoke-virtual {p0}, Lp/e;->q()V

    throw v1

    :cond_40
    const/16 p1, 0x23

    if-eq v0, p1, :cond_45

    return v0

    :cond_45
    invoke-virtual {p0}, Lp/e;->q()V

    throw v1

    :cond_49
    :goto_49
    move v0, v2

    goto :goto_1

    :cond_4b
    if-nez p1, :cond_4f

    const/4 p0, -0x1

    return p0

    :cond_4f
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "End of input"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final v(Lokio/ByteString;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    iget-object v2, p0, Lp/e;->f:Lokio/BufferedSource;

    invoke-interface {v2, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_35

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1f
    iget-object v4, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    invoke-virtual {p0}, Lp/e;->x()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_35
    if-nez v1, :cond_43

    iget-object p1, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    return-object p1

    :cond_43
    iget-object p1, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_56
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v0
.end method

.method public final w()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lp/e;->f:Lokio/BufferedSource;

    sget-object v1, Lp/e;->n:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object p0, p0, Lp/e;->g:Lokio/Buffer;

    if-eqz v2, :cond_15

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method public final x()C
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lp/e;->f:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_cd

    const/16 v3, 0x22

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x27

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x62

    if-eq v0, v3, :cond_ca

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c7

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_c6

    const/16 v4, 0x72

    if-eq v0, v4, :cond_c3

    const/16 v4, 0x74

    if-eq v0, v4, :cond_c0

    const/16 v4, 0x75

    if-ne v0, v4, :cond_ae

    iget-object v0, p0, Lp/e;->f:Lokio/BufferedSource;

    const-wide/16 v4, 0x4

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    move v6, v0

    :goto_49
    const/4 v7, 0x4

    if-ge v0, v7, :cond_91

    iget-object v7, p0, Lp/e;->g:Lokio/Buffer;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    shl-int/lit8 v6, v6, 0x4

    int-to-char v6, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_61

    const/16 v8, 0x39

    if-gt v7, v8, :cond_61

    add-int/lit8 v7, v7, -0x30

    goto :goto_75

    :cond_61
    const/16 v8, 0x61

    if-lt v7, v8, :cond_6a

    if-gt v7, v3, :cond_6a

    add-int/lit8 v7, v7, -0x61

    goto :goto_74

    :cond_6a
    const/16 v8, 0x41

    if-lt v7, v8, :cond_7a

    const/16 v8, 0x46

    if-gt v7, v8, :cond_7a

    add-int/lit8 v7, v7, -0x41

    :goto_74
    add-int/2addr v7, v2

    :goto_75
    add-int/2addr v7, v6

    int-to-char v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_7a
    const-string v0, "\\u"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v1

    :cond_91
    iget-object p0, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->skip(J)V

    return v6

    :cond_97
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unterminated escape sequence at path "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lp/c;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    const-string v2, "Invalid escape sequence: \\"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v1

    :cond_c0
    const/16 p0, 0x9

    return p0

    :cond_c3
    const/16 p0, 0xd

    return p0

    :cond_c6
    return v2

    :cond_c7
    const/16 p0, 0xc

    return p0

    :cond_ca
    const/16 p0, 0x8

    return p0

    :cond_cd
    int-to-char p0, v0

    return p0

    :cond_cf
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    throw v1
.end method

.method public final y(Lokio/ByteString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lp/e;->f:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lp/e;->g:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Lp/e;->g:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    invoke-virtual {p0}, Lp/e;->x()C

    goto :goto_0

    :cond_22
    iget-object p0, p0, Lp/e;->g:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    :cond_29
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lp/c;->p(Ljava/lang/String;)Lp/b;

    const/4 p0, 0x0

    throw p0
.end method

.method public final z()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lp/e;->f:Lokio/BufferedSource;

    sget-object v1, Lp/e;->n:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    iget-object p0, p0, Lp/e;->g:Lokio/Buffer;

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_15
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method
