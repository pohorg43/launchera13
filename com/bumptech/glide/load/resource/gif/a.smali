.class public Lcom/bumptech/glide/load/resource/gif/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/a$b;,
        Lcom/bumptech/glide/load/resource/gif/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/bumptech/glide/load/resource/gif/a$a;

.field public static final g:Lcom/bumptech/glide/load/resource/gif/a$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/bumptech/glide/load/resource/gif/a$b;

.field public final d:Lcom/bumptech/glide/load/resource/gif/a$a;

.field public final e:Lx0/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/a;->f:Lcom/bumptech/glide/load/resource/gif/a$a;

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/a$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/a$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/a;->g:Lcom/bumptech/glide/load/resource/gif/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ln0/c;Ln0/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ln0/c;",
            "Ln0/b;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/gif/a;->g:Lcom/bumptech/glide/load/resource/gif/a$b;

    sget-object v1, Lcom/bumptech/glide/load/resource/gif/a;->f:Lcom/bumptech/glide/load/resource/gif/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/a;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->d:Lcom/bumptech/glide/load/resource/gif/a$a;

    new-instance p1, Lx0/a;

    invoke-direct {p1, p3, p4}, Lx0/a;-><init>(Ln0/c;Ln0/b;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->e:Lx0/a;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->c:Lcom/bumptech/glide/load/resource/gif/a$b;

    return-void
.end method

.method public static d(Li0/c;II)I
    .registers 8

    iget v0, p0, Li0/c;->g:I

    div-int/2addr v0, p2

    iget v1, p0, Li0/c;->f:I

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_12
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    if-le v0, v1, :cond_4e

    const-string v1, "Downsampling GIF, sampleSize: "

    const-string v2, ", target dimens: ["

    const-string/jumbo v4, "x"

    invoke-static {v1, v0, v2, p1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Li0/c;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Li0/c;->g:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lj0/e;)Z
    .registers 7
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Lx0/e;->b:Lj0/d;

    invoke-virtual {p2, v0}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_39

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/a;->b:Ljava/util/List;

    if-nez p1, :cond_18

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_34

    :cond_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    move v1, v0

    :goto_1d
    if-ge v1, p2, :cond_32

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/ImageHeaderParser;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v2, v3, :cond_2f

    move-object p0, v2

    goto :goto_34

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_34
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, p1, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method public b(Ljava/lang/Object;IILj0/e;)Lm0/w;
    .registers 12
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->c:Lcom/bumptech/glide/load/resource/gif/a$b;

    monitor-enter p1

    :try_start_6
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/a$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/d;

    if-nez v0, :cond_15

    new-instance v0, Li0/d;

    invoke-direct {v0}, Li0/d;-><init>()V

    :cond_15
    move-object v6, v0

    const/4 v0, 0x0

    iput-object v0, v6, Li0/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v6, Li0/d;->a:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Li0/c;

    invoke-direct {v0}, Li0/c;-><init>()V

    iput-object v0, v6, Li0/d;->c:Li0/c;

    iput v2, v6, Li0/d;->d:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v6, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v6, Li0/d;->b:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_4f

    monitor-exit p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    :try_start_3e
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/a;->c(Ljava/nio/ByteBuffer;IILi0/d;Lj0/e;)Lx0/c;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_48

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/a;->c:Lcom/bumptech/glide/load/resource/gif/a$b;

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/gif/a$b;->a(Li0/d;)V

    return-object p1

    :catchall_48
    move-exception p1

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/a;->c:Lcom/bumptech/glide/load/resource/gif/a$b;

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/gif/a$b;->a(Li0/d;)V

    throw p1

    :catchall_4f
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final c(Ljava/nio/ByteBuffer;IILi0/d;Lj0/e;)Lx0/c;
    .registers 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Decoded GIF from stream in "

    const-string v2, "BufferGifDecoder"

    sget v3, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x2

    :try_start_d
    invoke-virtual/range {p4 .. p4}, Li0/d;->b()Li0/c;

    move-result-object v6

    iget v7, v6, Li0/c;->c:I

    const/4 v8, 0x0

    if-lez v7, :cond_a0

    iget v7, v6, Li0/c;->b:I

    if-eqz v7, :cond_1c

    goto/16 :goto_a0

    :cond_1c
    sget-object v7, Lx0/e;->a:Lj0/d;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lcom/bumptech/glide/load/b;->b:Lcom/bumptech/glide/load/b;

    if-ne v7, v9, :cond_2b

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2d

    :cond_2b
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2d
    move/from16 v13, p2

    move/from16 v14, p3

    invoke-static {v6, v13, v14}, Lcom/bumptech/glide/load/resource/gif/a;->d(Li0/c;II)I

    move-result v9

    iget-object v10, v0, Lcom/bumptech/glide/load/resource/gif/a;->d:Lcom/bumptech/glide/load/resource/gif/a$a;

    iget-object v11, v0, Lcom/bumptech/glide/load/resource/gif/a;->e:Lx0/a;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Li0/e;

    move-object/from16 v10, p1

    invoke-direct {v12, v11, v6, v10, v9}, Li0/e;-><init>(Li0/a$a;Li0/c;Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v12, v7}, Li0/e;->i(Landroid/graphics/Bitmap$Config;)V

    iget v6, v12, Li0/e;->k:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v12, Li0/e;->l:Li0/c;

    iget v7, v7, Li0/c;->c:I

    rem-int/2addr v6, v7

    iput v6, v12, Li0/e;->k:I

    invoke-virtual {v12}, Li0/e;->a()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_b9

    if-nez v15, :cond_70

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4}, Lg1/b;->a(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-object v8

    :cond_70
    :try_start_70
    sget-object v6, Ls0/b;->b:Lj0/g;

    check-cast v6, Ls0/b;

    new-instance v7, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object v10, v0, Lcom/bumptech/glide/load/resource/gif/a;->a:Landroid/content/Context;

    move-object v9, v7

    move-object v11, v12

    move-object v12, v6

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Li0/a;Lj0/g;IILandroid/graphics/Bitmap;)V

    new-instance v0, Lx0/c;

    invoke-direct {v0, v7}, Lx0/c;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_b9

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Lg1/b;->a(J)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    return-object v0

    :cond_a0
    :goto_a0
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4}, Lg1/b;->a(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    return-object v8

    :catchall_b9
    move-exception v0

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d2

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Lg1/b;->a(J)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    throw v0
.end method
