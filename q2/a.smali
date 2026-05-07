.class public final Lq2/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[Lp2/a;

.field public final e:[I

.field public final f:I

.field public final g:Lq2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq2/b<",
            "Lp2/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 8

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_b

    const/4 p3, -0x1

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    const/16 p4, 0xa

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lq2/b;

    invoke-direct {p5}, Lq2/b;-><init>()V

    iput-object p5, p0, Lq2/a;->g:Lq2/b;

    const/16 p5, 0x40

    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p5

    const v0, 0x8872

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {p5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p5

    const/16 v0, 0x20

    if-le p5, v0, :cond_3c

    move p5, v0

    :cond_3c
    if-gez p3, :cond_40

    sub-int p3, p5, p2

    :cond_40
    if-ltz p2, :cond_60

    if-ltz p3, :cond_60

    add-int v0, p2, p3

    if-gt v0, p5, :cond_60

    const/4 p5, 0x1

    if-lt p4, p5, :cond_60

    iput p1, p0, Lq2/a;->f:I

    iput p2, p0, Lq2/a;->a:I

    iput p3, p0, Lq2/a;->b:I

    new-array p2, p3, [Lp2/a;

    iput-object p2, p0, Lq2/a;->d:[Lp2/a;

    iput p4, p0, Lq2/a;->c:I

    if-ne p1, p5, :cond_5c

    new-array p1, p3, [I

    goto :goto_5d

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    iput-object p1, p0, Lq2/a;->e:[I

    return-void

    :cond_60
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Illegal arguments"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lp2/a;)I
    .registers 15

    iget-object v0, p0, Lq2/a;->g:Lq2/b;

    iput-object p1, v0, Lq2/b;->a:Lp2/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lq2/b;->b:Lp2/b$a;

    iput-object v1, v0, Lq2/b;->c:Lp2/b$a;

    const/4 v1, 0x0

    iput v1, v0, Lq2/b;->d:I

    iput v1, v0, Lq2/b;->e:I

    iput-boolean v1, p0, Lq2/a;->h:Z

    iget v2, p0, Lq2/a;->f:I

    const v3, 0x84c0

    const/4 v4, 0x1

    if-eqz v2, :cond_73

    const/4 v5, -0x1

    if-eq v2, v4, :cond_1d

    goto/16 :goto_cb

    :cond_1d
    iget v2, p0, Lq2/a;->a:I

    iget-object v6, p0, Lq2/a;->e:[I

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v6, v6, v1

    iget v7, p0, Lq2/a;->b:I

    move v8, v1

    move v10, v8

    move v9, v5

    :goto_2b
    if-ge v8, v7, :cond_53

    iget-object v11, p0, Lq2/a;->d:[Lp2/a;

    aget-object v11, v11, v8

    if-ne v11, p1, :cond_3e

    iget-object v9, p0, Lq2/a;->e:[I

    aget v11, v9, v8

    iget v12, p0, Lq2/a;->c:I

    add-int/2addr v11, v12

    aput v11, v9, v8

    move v9, v8

    goto :goto_50

    :cond_3e
    iget-object v11, p0, Lq2/a;->e:[I

    aget v12, v11, v8

    if-ltz v12, :cond_4d

    aget v12, v11, v8

    add-int/2addr v12, v5

    aput v12, v11, v8

    aget v12, v11, v8

    if-ge v12, v6, :cond_50

    :cond_4d
    aget v6, v11, v8

    move v10, v8

    :cond_50
    :goto_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_53
    if-gez v9, :cond_6f

    iget-object v5, p0, Lq2/a;->d:[Lp2/a;

    aput-object p1, v5, v10

    iget-object v5, p0, Lq2/a;->e:[I

    const/16 v6, 0x64

    aput v6, v5, v10

    iget v5, p0, Lq2/a;->a:I

    add-int/2addr v5, v10

    add-int/2addr v5, v3

    invoke-static {v5}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget v5, p1, Lp2/a;->e:I

    iget v6, p1, Lp2/a;->f:I

    invoke-static {v5, v6}, Landroid/opengl/GLES30;->glBindTexture(II)V

    move v9, v10

    goto :goto_71

    :cond_6f
    iput-boolean v4, p0, Lq2/a;->h:Z

    :goto_71
    add-int/2addr v2, v9

    goto :goto_a9

    :cond_73
    iget v2, p0, Lq2/a;->a:I

    iget v5, p0, Lq2/a;->b:I

    move v6, v1

    :goto_78
    if-ge v6, v5, :cond_8c

    iget v7, p0, Lq2/a;->k:I

    add-int/2addr v7, v6

    iget v8, p0, Lq2/a;->b:I

    rem-int/2addr v7, v8

    iget-object v8, p0, Lq2/a;->d:[Lp2/a;

    aget-object v8, v8, v7

    if-ne v8, p1, :cond_89

    iput-boolean v4, p0, Lq2/a;->h:Z

    goto :goto_a8

    :cond_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    :cond_8c
    iget v5, p0, Lq2/a;->k:I

    add-int/2addr v5, v4

    iget v6, p0, Lq2/a;->b:I

    rem-int/2addr v5, v6

    iput v5, p0, Lq2/a;->k:I

    iget-object v6, p0, Lq2/a;->d:[Lp2/a;

    aput-object p1, v6, v5

    iget v6, p0, Lq2/a;->a:I

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    invoke-static {v6}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget v5, p1, Lp2/a;->e:I

    iget v6, p1, Lp2/a;->f:I

    invoke-static {v5, v6}, Landroid/opengl/GLES30;->glBindTexture(II)V

    iget v7, p0, Lq2/a;->k:I

    :goto_a8
    add-int/2addr v2, v7

    :goto_a9
    move v5, v2

    iget-boolean v2, p0, Lq2/a;->h:Z

    if-eqz v2, :cond_b8

    iget v2, p0, Lq2/a;->i:I

    add-int/2addr v2, v4

    iput v2, p0, Lq2/a;->i:I

    add-int/2addr v3, v5

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto :goto_bd

    :cond_b8
    iget v2, p0, Lq2/a;->j:I

    add-int/2addr v2, v4

    iput v2, p0, Lq2/a;->j:I

    :goto_bd
    iget p0, v0, Lq2/b;->d:I

    iget v2, v0, Lq2/b;->e:I

    invoke-virtual {p1, p0, v2, v1}, Lp2/a;->b(IIZ)V

    iget-object p0, v0, Lq2/b;->b:Lp2/b$a;

    iget-object v0, v0, Lq2/b;->c:Lp2/b$a;

    invoke-virtual {p1, p0, v0, v1}, Lp2/a;->a(Lp2/b$a;Lp2/b$a;Z)V

    :goto_cb
    return v5
.end method
