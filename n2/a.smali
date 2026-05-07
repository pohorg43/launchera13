.class public Ln2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls2/a;


# instance fields
.field public a:Lm2/a;


# direct methods
.method public constructor <init>(FF)V
    .registers 22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    int-to-float v1, v0

    div-float v2, p1, v1

    div-float v1, p2, v1

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/high16 v16, 0x3f800000  # 1.0f

    new-array v3, v3, [F

    neg-float v5, v2

    const/16 v17, 0x0

    add-float v5, v5, v17

    aput v5, v3, v4

    add-float v18, v1, v17

    aput v18, v3, v15

    aput v17, v3, v0

    aput v17, v3, v14

    const/4 v0, 0x4

    aput v17, v3, v0

    add-float v2, v2, v17

    aput v2, v3, v13

    aput v18, v3, v12

    aput v17, v3, v11

    aput v16, v3, v10

    aput v17, v3, v9

    aput v5, v3, v8

    neg-float v1, v1

    add-float v1, v1, v17

    aput v1, v3, v7

    aput v17, v3, v6

    const/16 v5, 0xd

    aput v17, v3, v5

    const/16 v5, 0xe

    aput v16, v3, v5

    const/16 v5, 0xf

    aput v2, v3, v5

    const/16 v2, 0x10

    aput v1, v3, v2

    const/16 v1, 0x11

    aput v17, v3, v1

    const/16 v1, 0x12

    aput v16, v3, v1

    const/16 v1, 0x13

    aput v16, v3, v1

    array-length v1, v3

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    new-instance v1, Lm2/a;

    array-length v2, v3

    invoke-direct {v1, v2, v0}, Lm2/a;-><init>(ILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ln2/a;->a:Lm2/a;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    iget-object p0, p0, Ln2/a;->a:Lm2/a;

    invoke-virtual {p0}, Lm2/a;->dispose()V

    return-void
.end method
