.class public Li0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li0/a;


# instance fields
.field public a:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final b:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final c:Li0/a$a;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public k:I

.field public l:Li0/c;

.field public m:Landroid/graphics/Bitmap;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:Landroid/graphics/Bitmap$Config;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li0/a$a;Li0/c;Ljava/nio/ByteBuffer;I)V
    .registers 6
    .param p1  # Li0/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Li0/e;->b:[I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Li0/e;->t:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Li0/e;->c:Li0/a$a;

    new-instance p1, Li0/c;

    invoke-direct {p1}, Li0/c;-><init>()V

    iput-object p1, p0, Li0/e;->l:Li0/c;

    monitor-enter p0

    if-lez p4, :cond_86

    :try_start_19
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    const/4 p4, 0x0

    iput p4, p0, Li0/e;->o:I

    iput-object p2, p0, Li0/e;->l:Li0/c;

    const/4 v0, -0x1

    iput v0, p0, Li0/e;->k:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Li0/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p3, p0, Li0/e;->d:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Li0/e;->n:Z

    iget-object p3, p2, Li0/c;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_51

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Li0/b;

    iget p4, p4, Li0/b;->g:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3d

    const/4 p3, 0x1

    iput-boolean p3, p0, Li0/e;->n:Z

    :cond_51
    iput p1, p0, Li0/e;->p:I

    iget p3, p2, Li0/c;->f:I

    div-int p4, p3, p1

    iput p4, p0, Li0/e;->r:I

    iget p2, p2, Li0/c;->g:I

    div-int p1, p2, p1

    iput p1, p0, Li0/e;->q:I

    iget-object p1, p0, Li0/e;->c:Li0/a$a;

    mul-int/2addr p3, p2

    check-cast p1, Lx0/a;

    invoke-virtual {p1, p3}, Lx0/a;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Li0/e;->i:[B

    iget-object p1, p0, Li0/e;->c:Li0/a$a;

    iget p2, p0, Li0/e;->r:I

    iget p3, p0, Li0/e;->q:I

    mul-int/2addr p2, p3

    check-cast p1, Lx0/a;

    iget-object p1, p1, Lx0/a;->b:Ln0/b;

    if-nez p1, :cond_7a

    new-array p1, p2, [I

    goto :goto_82

    :cond_7a
    const-class p3, [I

    invoke-interface {p1, p2, p3}, Ln0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_82
    iput-object p1, p0, Li0/e;->j:[I
    :try_end_84
    .catchall {:try_start_19 .. :try_end_84} :catchall_9d

    monitor-exit p0

    return-void

    :cond_86
    :try_start_86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sample size must be >=0, not: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a()Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li0/e;->l:Li0/c;

    iget v0, v0, Li0/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_d

    iget v0, p0, Li0/e;->k:I

    if-gez v0, :cond_3b

    :cond_d
    const-string v0, "e"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Li0/e;->l:Li0/c;

    iget v4, v4, Li0/c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Li0/e;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iput v2, p0, Li0/e;->o:I

    :cond_3b
    iget v0, p0, Li0/e;->o:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_ca

    const/4 v4, 0x2

    if-ne v0, v4, :cond_45

    goto/16 :goto_ca

    :cond_45
    const/4 v0, 0x0

    iput v0, p0, Li0/e;->o:I

    iget-object v5, p0, Li0/e;->e:[B

    if-nez v5, :cond_58

    iget-object v5, p0, Li0/e;->c:Li0/a$a;

    const/16 v6, 0xff

    check-cast v5, Lx0/a;

    invoke-virtual {v5, v6}, Lx0/a;->a(I)[B

    move-result-object v5

    iput-object v5, p0, Li0/e;->e:[B

    :cond_58
    iget-object v5, p0, Li0/e;->l:Li0/c;

    iget-object v5, v5, Li0/c;->e:Ljava/util/List;

    iget v6, p0, Li0/e;->k:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li0/b;

    iget v6, p0, Li0/e;->k:I

    sub-int/2addr v6, v2

    if-ltz v6, :cond_74

    iget-object v7, p0, Li0/e;->l:Li0/c;

    iget-object v7, v7, Li0/c;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li0/b;

    goto :goto_75

    :cond_74
    move-object v6, v3

    :goto_75
    iget-object v7, v5, Li0/b;->k:[I

    if-eqz v7, :cond_7a

    goto :goto_7e

    :cond_7a
    iget-object v7, p0, Li0/e;->l:Li0/c;

    iget-object v7, v7, Li0/c;->a:[I

    :goto_7e
    iput-object v7, p0, Li0/e;->a:[I

    if-nez v7, :cond_a6

    const-string v0, "e"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "e"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid color table found for frame #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Li0/e;->k:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    iput v2, p0, Li0/e;->o:I
    :try_end_a4
    .catchall {:try_start_1 .. :try_end_a4} :catchall_ec

    monitor-exit p0

    return-object v3

    :cond_a6
    :try_start_a6
    iget-boolean v1, v5, Li0/b;->f:Z

    if-eqz v1, :cond_c4

    iget-object v1, p0, Li0/e;->b:[I

    array-length v2, v7

    invoke-static {v7, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Li0/e;->b:[I

    iput-object v1, p0, Li0/e;->a:[I

    iget v2, v5, Li0/b;->h:I

    aput v0, v1, v2

    iget v0, v5, Li0/b;->g:I

    if-ne v0, v4, :cond_c4

    iget v0, p0, Li0/e;->k:I

    if-nez v0, :cond_c4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Li0/e;->s:Ljava/lang/Boolean;

    :cond_c4
    invoke-virtual {p0, v5, v6}, Li0/e;->j(Li0/b;Li0/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_c8
    .catchall {:try_start_a6 .. :try_end_c8} :catchall_ec

    monitor-exit p0

    return-object v0

    :cond_ca
    :goto_ca
    :try_start_ca
    const-string v0, "e"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string v0, "e"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Li0/e;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_ca .. :try_end_ea} :catchall_ec

    :cond_ea
    monitor-exit p0

    return-object v3

    :catchall_ec
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 3

    iget v0, p0, Li0/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Li0/e;->l:Li0/c;

    iget v1, v1, Li0/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Li0/e;->k:I

    return-void
.end method

.method public c()I
    .registers 1

    iget-object p0, p0, Li0/e;->l:Li0/c;

    iget p0, p0, Li0/c;->c:I

    return p0
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Li0/e;->l:Li0/c;

    iget-object v1, p0, Li0/e;->i:[B

    if-eqz v1, :cond_13

    iget-object v2, p0, Li0/e;->c:Li0/a$a;

    check-cast v2, Lx0/a;

    iget-object v2, v2, Lx0/a;->b:Ln0/b;

    if-nez v2, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v2, v1}, Ln0/b;->d(Ljava/lang/Object;)V

    :cond_13
    :goto_13
    iget-object v1, p0, Li0/e;->j:[I

    if-eqz v1, :cond_23

    iget-object v2, p0, Li0/e;->c:Li0/a$a;

    check-cast v2, Lx0/a;

    iget-object v2, v2, Lx0/a;->b:Ln0/b;

    if-nez v2, :cond_20

    goto :goto_23

    :cond_20
    invoke-interface {v2, v1}, Ln0/b;->d(Ljava/lang/Object;)V

    :cond_23
    :goto_23
    iget-object v1, p0, Li0/e;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_30

    iget-object v2, p0, Li0/e;->c:Li0/a$a;

    check-cast v2, Lx0/a;

    iget-object v2, v2, Lx0/a;->a:Ln0/c;

    invoke-interface {v2, v1}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    :cond_30
    iput-object v0, p0, Li0/e;->m:Landroid/graphics/Bitmap;

    iput-object v0, p0, Li0/e;->d:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Li0/e;->s:Ljava/lang/Boolean;

    iget-object v0, p0, Li0/e;->e:[B

    if-eqz v0, :cond_46

    iget-object p0, p0, Li0/e;->c:Li0/a$a;

    check-cast p0, Lx0/a;

    iget-object p0, p0, Lx0/a;->b:Ln0/b;

    if-nez p0, :cond_43

    goto :goto_46

    :cond_43
    invoke-interface {p0, v0}, Ln0/b;->d(Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public d()I
    .registers 3

    iget-object v0, p0, Li0/e;->l:Li0/c;

    iget v1, v0, Li0/c;->c:I

    if-lez v1, :cond_1c

    iget p0, p0, Li0/e;->k:I

    if-gez p0, :cond_b

    goto :goto_1c

    :cond_b
    if-ltz p0, :cond_1a

    if-ge p0, v1, :cond_1a

    iget-object v0, v0, Li0/c;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li0/b;

    iget p0, p0, Li0/b;->i:I

    goto :goto_1b

    :cond_1a
    const/4 p0, -0x1

    :goto_1b
    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/nio/ByteBuffer;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Li0/e;->d:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public f()I
    .registers 1

    iget p0, p0, Li0/e;->k:I

    return p0
.end method

.method public g()I
    .registers 3

    iget-object v0, p0, Li0/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Li0/e;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object p0, p0, Li0/e;->j:[I

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p0, v0

    return p0
.end method

.method public final h()Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Li0/e;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    :cond_b
    iget-object v0, p0, Li0/e;->t:Landroid/graphics/Bitmap$Config;

    goto :goto_10

    :cond_e
    :goto_e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_10
    iget-object v1, p0, Li0/e;->c:Li0/a$a;

    iget v2, p0, Li0/e;->r:I

    iget p0, p0, Li0/e;->q:I

    check-cast v1, Lx0/a;

    iget-object v1, v1, Lx0/a;->a:Ln0/c;

    invoke-interface {v1, v2, p0, v0}, Ln0/c;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object p0
.end method

.method public i(Landroid/graphics/Bitmap$Config;)V
    .registers 4
    .param p1  # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_34

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_9

    goto :goto_34

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    iput-object p1, p0, Li0/e;->t:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final j(Li0/b;Li0/b;)Landroid/graphics/Bitmap;
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v10, v0, Li0/e;->j:[I

    const/4 v11, 0x0

    if-nez v2, :cond_1e

    iget-object v3, v0, Li0/e;->m:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_18

    iget-object v4, v0, Li0/e;->c:Li0/a$a;

    check-cast v4, Lx0/a;

    iget-object v4, v4, Lx0/a;->a:Ln0/c;

    invoke-interface {v4, v3}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    :cond_18
    const/4 v3, 0x0

    iput-object v3, v0, Li0/e;->m:Landroid/graphics/Bitmap;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_1e
    const/4 v3, 0x3

    if-eqz v2, :cond_2c

    iget v4, v2, Li0/b;->g:I

    if-ne v4, v3, :cond_2c

    iget-object v4, v0, Li0/e;->m:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2c

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_2c
    const/4 v4, 0x2

    if-eqz v2, :cond_7e

    iget v5, v2, Li0/b;->g:I

    if-lez v5, :cond_7e

    if-ne v5, v4, :cond_6c

    iget-boolean v3, v1, Li0/b;->f:Z

    if-nez v3, :cond_47

    iget-object v3, v0, Li0/e;->l:Li0/c;

    iget v4, v3, Li0/c;->k:I

    iget-object v5, v1, Li0/b;->k:[I

    if-eqz v5, :cond_48

    iget v3, v3, Li0/c;->j:I

    iget v5, v1, Li0/b;->h:I

    if-ne v3, v5, :cond_48

    :cond_47
    move v4, v11

    :cond_48
    iget v3, v2, Li0/b;->d:I

    iget v5, v0, Li0/e;->p:I

    div-int/2addr v3, v5

    iget v6, v2, Li0/b;->b:I

    div-int/2addr v6, v5

    iget v7, v2, Li0/b;->c:I

    div-int/2addr v7, v5

    iget v2, v2, Li0/b;->a:I

    div-int/2addr v2, v5

    iget v5, v0, Li0/e;->r:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    mul-int/2addr v3, v5

    add-int/2addr v3, v6

    :goto_5c
    if-ge v6, v3, :cond_7e

    add-int v2, v6, v7

    move v5, v6

    :goto_61
    if-ge v5, v2, :cond_68

    aput v4, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_68
    iget v2, v0, Li0/e;->r:I

    add-int/2addr v6, v2

    goto :goto_5c

    :cond_6c
    if-ne v5, v3, :cond_7e

    iget-object v2, v0, Li0/e;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7e

    const/4 v4, 0x0

    iget v8, v0, Li0/e;->r:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Li0/e;->q:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_7e
    iget-object v2, v0, Li0/e;->d:Ljava/nio/ByteBuffer;

    iget v3, v1, Li0/b;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v1, Li0/b;->c:I

    iget v3, v1, Li0/b;->d:I

    mul-int/2addr v2, v3

    iget-object v3, v0, Li0/e;->i:[B

    if-eqz v3, :cond_91

    array-length v3, v3

    if-ge v3, v2, :cond_9b

    :cond_91
    iget-object v3, v0, Li0/e;->c:Li0/a$a;

    check-cast v3, Lx0/a;

    invoke-virtual {v3, v2}, Lx0/a;->a(I)[B

    move-result-object v3

    iput-object v3, v0, Li0/e;->i:[B

    :cond_9b
    iget-object v3, v0, Li0/e;->i:[B

    iget-object v4, v0, Li0/e;->f:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_a7

    new-array v4, v5, [S

    iput-object v4, v0, Li0/e;->f:[S

    :cond_a7
    iget-object v4, v0, Li0/e;->f:[S

    iget-object v6, v0, Li0/e;->g:[B

    if-nez v6, :cond_b1

    new-array v5, v5, [B

    iput-object v5, v0, Li0/e;->g:[B

    :cond_b1
    iget-object v5, v0, Li0/e;->g:[B

    iget-object v6, v0, Li0/e;->h:[B

    if-nez v6, :cond_bd

    const/16 v6, 0x1001

    new-array v6, v6, [B

    iput-object v6, v0, Li0/e;->h:[B

    :cond_bd
    iget-object v6, v0, Li0/e;->h:[B

    iget-object v7, v0, Li0/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    shl-int v9, v8, v7

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v9, 0x2

    add-int/2addr v7, v8

    shl-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    move v14, v11

    :goto_d3
    if-ge v14, v9, :cond_dd

    aput-short v11, v4, v14

    int-to-byte v15, v14

    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_d3

    :cond_dd
    iget-object v14, v0, Li0/e;->e:[B

    const/4 v15, -0x1

    move/from16 p2, v7

    move/from16 v25, p2

    move/from16 v23, v8

    move/from16 v26, v23

    move v7, v11

    move/from16 v16, v7

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v24, v13

    move/from16 v22, v15

    move-object v8, v0

    move/from16 v15, v21

    :goto_fc
    const/16 v27, 0x8

    if-ge v11, v2, :cond_200

    if-nez v16, :cond_136

    iget-object v15, v8, Li0/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    if-gtz v15, :cond_113

    move-object/from16 v30, v10

    move/from16 v28, v11

    move/from16 v29, v13

    goto :goto_129

    :cond_113
    move/from16 v28, v11

    iget-object v11, v8, Li0/e;->d:Ljava/nio/ByteBuffer;

    move/from16 v29, v13

    iget-object v13, v8, Li0/e;->e:[B

    move-object/from16 v30, v10

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v0, 0x0

    invoke-virtual {v11, v13, v0, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_129
    if-gtz v15, :cond_131

    const/4 v0, 0x3

    iput v0, v8, Li0/e;->o:I

    const/4 v15, 0x0

    goto/16 :goto_202

    :cond_131
    const/16 v17, 0x0

    move/from16 v16, v15

    goto :goto_13c

    :cond_136
    move-object/from16 v30, v10

    move/from16 v28, v11

    move/from16 v29, v13

    :goto_13c
    aget-byte v0, v14, v17

    and-int/lit16 v0, v0, 0xff

    shl-int v0, v0, v18

    add-int v19, v19, v0

    add-int/lit8 v18, v18, 0x8

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v18

    move/from16 v10, v20

    move/from16 v13, v22

    move/from16 v15, v24

    move/from16 v11, v28

    move-object/from16 v18, v8

    move/from16 v8, v25

    :goto_158
    if-lt v0, v8, :cond_1e0

    move-object/from16 v20, v14

    and-int v14, v19, v26

    shr-int v19, v19, v8

    sub-int/2addr v0, v8

    if-ne v14, v9, :cond_175

    const/4 v8, -0x1

    move-object/from16 v22, v6

    move v13, v8

    move/from16 v26, v23

    move/from16 v15, v29

    move/from16 v8, p2

    move-object/from16 v32, v18

    move/from16 v18, v0

    move-object/from16 v0, v32

    goto/16 :goto_1d4

    :cond_175
    if-ne v14, v12, :cond_17b

    move-object/from16 v22, v6

    goto/16 :goto_1e6

    :cond_17b
    move/from16 v18, v0

    const/4 v0, -0x1

    if-ne v13, v0, :cond_191

    aget-byte v0, v5, v14

    aput-byte v0, v3, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    move v10, v14

    move v13, v10

    move/from16 v0, v18

    move-object/from16 v14, v20

    move-object/from16 v18, p0

    goto :goto_158

    :cond_191
    if-lt v14, v15, :cond_19a

    int-to-byte v0, v10

    aput-byte v0, v6, v21

    add-int/lit8 v21, v21, 0x1

    move v0, v13

    goto :goto_19b

    :cond_19a
    move v0, v14

    :goto_19b
    if-lt v0, v9, :cond_1a6

    aget-byte v10, v5, v0

    aput-byte v10, v6, v21

    add-int/lit8 v21, v21, 0x1

    aget-short v0, v4, v0

    goto :goto_19b

    :cond_1a6
    aget-byte v0, v5, v0

    and-int/lit16 v10, v0, 0xff

    int-to-byte v0, v10

    aput-byte v0, v3, v7

    :goto_1ad
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    if-lez v21, :cond_1ba

    add-int/lit8 v21, v21, -0x1

    aget-byte v22, v6, v21

    aput-byte v22, v3, v7

    goto :goto_1ad

    :cond_1ba
    move-object/from16 v22, v6

    const/16 v6, 0x1000

    if-ge v15, v6, :cond_1d1

    int-to-short v13, v13

    aput-short v13, v4, v15

    aput-byte v0, v5, v15

    add-int/lit8 v15, v15, 0x1

    and-int v0, v15, v26

    if-nez v0, :cond_1d1

    if-ge v15, v6, :cond_1d1

    add-int/lit8 v8, v8, 0x1

    add-int v26, v26, v15

    :cond_1d1
    move-object/from16 v0, p0

    move v13, v14

    :goto_1d4
    move-object/from16 v14, v20

    move-object/from16 v6, v22

    move/from16 v32, v18

    move-object/from16 v18, v0

    move/from16 v0, v32

    goto/16 :goto_158

    :cond_1e0
    move-object/from16 v22, v6

    move-object/from16 v20, v14

    move-object/from16 v18, p0

    :goto_1e6
    const/4 v6, 0x0

    move/from16 v25, v8

    move/from16 v24, v15

    move-object/from16 v8, v18

    move-object/from16 v14, v20

    move/from16 v18, v0

    move v15, v6

    move/from16 v20, v10

    move-object/from16 v6, v22

    move-object/from16 v10, v30

    move-object/from16 v0, p0

    move/from16 v22, v13

    move/from16 v13, v29

    goto/16 :goto_fc

    :cond_200
    move-object/from16 v30, v10

    :goto_202
    invoke-static {v3, v7, v2, v15}, Ljava/util/Arrays;->fill([BIIB)V

    iget-boolean v0, v1, Li0/b;->e:Z

    if-nez v0, :cond_27c

    move-object/from16 v0, p0

    iget v2, v0, Li0/e;->p:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_212

    goto/16 :goto_27e

    :cond_212
    iget-object v2, v0, Li0/e;->j:[I

    iget v3, v1, Li0/b;->d:I

    iget v4, v1, Li0/b;->b:I

    iget v5, v1, Li0/b;->c:I

    iget v6, v1, Li0/b;->a:I

    iget v7, v0, Li0/e;->k:I

    if-nez v7, :cond_222

    const/4 v7, 0x1

    goto :goto_223

    :cond_222
    move v7, v15

    :goto_223
    iget v8, v0, Li0/e;->r:I

    iget-object v9, v0, Li0/e;->i:[B

    iget-object v10, v0, Li0/e;->a:[I

    const/4 v11, -0x1

    :goto_22a
    if-ge v15, v3, :cond_25e

    add-int v12, v15, v4

    mul-int/2addr v12, v8

    add-int v13, v12, v6

    add-int v14, v13, v5

    add-int/2addr v12, v8

    if-ge v12, v14, :cond_237

    move v14, v12

    :cond_237
    iget v12, v1, Li0/b;->c:I

    mul-int/2addr v12, v15

    :goto_23a
    if-ge v13, v14, :cond_257

    move/from16 v16, v3

    aget-byte v3, v9, v12

    move/from16 v17, v4

    and-int/lit16 v4, v3, 0xff

    if-eq v4, v11, :cond_24e

    aget v4, v10, v4

    if-eqz v4, :cond_24d

    aput v4, v2, v13

    goto :goto_24e

    :cond_24d
    move v11, v3

    :cond_24e
    :goto_24e
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_23a

    :cond_257
    move/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_22a

    :cond_25e
    iget-object v2, v0, Li0/e;->s:Ljava/lang/Boolean;

    if-eqz v2, :cond_268

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_271

    :cond_268
    iget-object v2, v0, Li0/e;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_273

    if-eqz v7, :cond_273

    const/4 v2, -0x1

    if-eq v11, v2, :cond_273

    :cond_271
    const/4 v2, 0x1

    goto :goto_274

    :cond_273
    const/4 v2, 0x0

    :goto_274
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Li0/e;->s:Ljava/lang/Boolean;

    goto/16 :goto_400

    :cond_27c
    move-object/from16 v0, p0

    :goto_27e
    iget-object v2, v0, Li0/e;->j:[I

    iget v3, v1, Li0/b;->d:I

    iget v4, v0, Li0/e;->p:I

    div-int/2addr v3, v4

    iget v5, v1, Li0/b;->b:I

    div-int/2addr v5, v4

    iget v6, v1, Li0/b;->c:I

    div-int/2addr v6, v4

    iget v7, v1, Li0/b;->a:I

    div-int/2addr v7, v4

    iget v8, v0, Li0/e;->k:I

    if-nez v8, :cond_294

    const/4 v8, 0x1

    goto :goto_295

    :cond_294
    const/4 v8, 0x0

    :goto_295
    iget v9, v0, Li0/e;->r:I

    iget v10, v0, Li0/e;->q:I

    iget-object v11, v0, Li0/e;->i:[B

    iget-object v12, v0, Li0/e;->a:[I

    iget-object v13, v0, Li0/e;->s:Ljava/lang/Boolean;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_2a3
    if-ge v14, v3, :cond_3ec

    move-object/from16 p2, v13

    iget-boolean v13, v1, Li0/b;->e:Z

    if-eqz v13, :cond_2cc

    if-lt v15, v3, :cond_2c7

    add-int/lit8 v13, v16, 0x1

    move/from16 v17, v3

    const/4 v3, 0x2

    if-eq v13, v3, :cond_2c3

    const/4 v3, 0x3

    if-eq v13, v3, :cond_2bf

    const/4 v3, 0x4

    if-eq v13, v3, :cond_2bb

    goto :goto_2c4

    :cond_2bb
    const/4 v15, 0x1

    const/16 v27, 0x2

    goto :goto_2c4

    :cond_2bf
    const/16 v27, 0x4

    const/4 v15, 0x2

    goto :goto_2c4

    :cond_2c3
    const/4 v15, 0x4

    :goto_2c4
    move/from16 v16, v13

    goto :goto_2c9

    :cond_2c7
    move/from16 v17, v3

    :goto_2c9
    add-int v3, v15, v27

    goto :goto_2d0

    :cond_2cc
    move/from16 v17, v3

    move v3, v15

    move v15, v14

    :goto_2d0
    add-int/2addr v15, v5

    const/4 v13, 0x1

    if-ne v4, v13, :cond_2d6

    const/4 v13, 0x1

    goto :goto_2d7

    :cond_2d6
    const/4 v13, 0x0

    :goto_2d7
    if-ge v15, v10, :cond_3cc

    mul-int/2addr v15, v9

    add-int v18, v15, v7

    move/from16 v19, v3

    add-int v3, v18, v6

    add-int/2addr v15, v9

    if-ge v15, v3, :cond_2e4

    move v3, v15

    :cond_2e4
    mul-int v15, v14, v4

    move/from16 v20, v5

    iget v5, v1, Li0/b;->c:I

    mul-int/2addr v15, v5

    if-eqz v13, :cond_30d

    move-object/from16 v13, p2

    move/from16 v5, v18

    :goto_2f1
    move/from16 v21, v6

    if-ge v5, v3, :cond_3c5

    aget-byte v6, v11, v15

    and-int/lit16 v6, v6, 0xff

    aget v6, v12, v6

    if-eqz v6, :cond_300

    aput v6, v2, v5

    goto :goto_307

    :cond_300
    if-eqz v8, :cond_307

    if-nez v13, :cond_307

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v13, v6

    :cond_307
    :goto_307
    add-int/2addr v15, v4

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v21

    goto :goto_2f1

    :cond_30d
    move/from16 v21, v6

    sub-int v5, v3, v18

    mul-int/2addr v5, v4

    add-int/2addr v5, v15

    move-object/from16 v13, p2

    move/from16 v6, v18

    :goto_317
    if-ge v6, v3, :cond_3c5

    move/from16 v18, v3

    iget v3, v1, Li0/b;->c:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v28, v7

    move/from16 v29, v9

    move v7, v15

    :goto_32c
    iget v9, v0, Li0/e;->p:I

    add-int/2addr v9, v15

    if-ge v7, v9, :cond_361

    iget-object v9, v0, Li0/e;->i:[B

    move/from16 v31, v10

    array-length v10, v9

    if-ge v7, v10, :cond_363

    if-ge v7, v5, :cond_363

    aget-byte v9, v9, v7

    and-int/lit16 v9, v9, 0xff

    iget-object v10, v0, Li0/e;->a:[I

    aget v9, v10, v9

    if-eqz v9, :cond_35c

    shr-int/lit8 v10, v9, 0x18

    and-int/lit16 v10, v10, 0xff

    add-int v22, v22, v10

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    add-int v23, v23, v10

    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    add-int v24, v24, v10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    add-int/lit8 v26, v26, 0x1

    :cond_35c
    add-int/lit8 v7, v7, 0x1

    move/from16 v10, v31

    goto :goto_32c

    :cond_361
    move/from16 v31, v10

    :cond_363
    add-int/2addr v3, v15

    move v7, v3

    :goto_365
    iget v9, v0, Li0/e;->p:I

    add-int/2addr v9, v3

    if-ge v7, v9, :cond_396

    iget-object v9, v0, Li0/e;->i:[B

    array-length v10, v9

    if-ge v7, v10, :cond_396

    if-ge v7, v5, :cond_396

    aget-byte v9, v9, v7

    and-int/lit16 v9, v9, 0xff

    iget-object v10, v0, Li0/e;->a:[I

    aget v9, v10, v9

    if-eqz v9, :cond_393

    shr-int/lit8 v10, v9, 0x18

    and-int/lit16 v10, v10, 0xff

    add-int v22, v22, v10

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    add-int v23, v23, v10

    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    add-int v24, v24, v10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    add-int/lit8 v26, v26, 0x1

    :cond_393
    add-int/lit8 v7, v7, 0x1

    goto :goto_365

    :cond_396
    if-nez v26, :cond_39a

    const/4 v3, 0x0

    goto :goto_3ac

    :cond_39a
    div-int v22, v22, v26

    shl-int/lit8 v3, v22, 0x18

    div-int v23, v23, v26

    shl-int/lit8 v7, v23, 0x10

    or-int/2addr v3, v7

    div-int v24, v24, v26

    shl-int/lit8 v7, v24, 0x8

    or-int/2addr v3, v7

    div-int v25, v25, v26

    or-int v3, v3, v25

    :goto_3ac
    if-eqz v3, :cond_3b1

    aput v3, v2, v6

    goto :goto_3b8

    :cond_3b1
    if-eqz v8, :cond_3b8

    if-nez v13, :cond_3b8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v13, v3

    :cond_3b8
    :goto_3b8
    add-int/2addr v15, v4

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    move/from16 v7, v28

    move/from16 v9, v29

    move/from16 v10, v31

    goto/16 :goto_317

    :cond_3c5
    move/from16 v28, v7

    move/from16 v29, v9

    move/from16 v31, v10

    goto :goto_3da

    :cond_3cc
    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v28, v7

    move/from16 v29, v9

    move/from16 v31, v10

    move-object/from16 v13, p2

    :goto_3da
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    move/from16 v15, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v28

    move/from16 v9, v29

    move/from16 v10, v31

    goto/16 :goto_2a3

    :cond_3ec
    move-object/from16 p2, v13

    iget-object v2, v0, Li0/e;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_400

    if-nez p2, :cond_3f6

    const/4 v2, 0x0

    goto :goto_3fa

    :cond_3f6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_3fa
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Li0/e;->s:Ljava/lang/Boolean;

    :cond_400
    :goto_400
    iget-boolean v2, v0, Li0/e;->n:Z

    if-eqz v2, :cond_424

    iget v1, v1, Li0/b;->g:I

    if-eqz v1, :cond_40b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_424

    :cond_40b
    iget-object v1, v0, Li0/e;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_415

    invoke-virtual/range {p0 .. p0}, Li0/e;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Li0/e;->m:Landroid/graphics/Bitmap;

    :cond_415
    iget-object v1, v0, Li0/e;->m:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Li0/e;->r:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Li0/e;->q:I

    move-object/from16 v2, v30

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_424
    invoke-virtual/range {p0 .. p0}, Li0/e;->h()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v2, 0x0

    iget v6, v0, Li0/e;->r:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, v0, Li0/e;->q:I

    move-object v0, v8

    move-object/from16 v1, v30

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8
.end method
