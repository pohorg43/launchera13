.class public Lt0/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final b:Lt0/j;


# direct methods
.method public constructor <init>(Lt0/j;I)V
    .registers 4

    iput p2, p0, Lt0/f;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/f;->b:Lt0/j;

    return-void

    :cond_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/f;->b:Lt0/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lj0/e;)Z
    .registers 4

    iget p2, p0, Lt0/f;->a:I

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_18

    goto :goto_f

    :pswitch_7  #0x0
    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lt0/f;->b:Lt0/j;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :goto_f
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lt0/f;->b:Lt0/j;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;IILj0/e;)Lm0/w;
    .registers 12

    iget v0, p0, Lt0/f;->a:I

    packed-switch v0, :pswitch_data_32

    goto :goto_1b

    :pswitch_6  #0x0
    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/bumptech/glide/util/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/bumptech/glide/util/a$a;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/util/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lt0/f;->b:Lt0/j;

    sget-object v6, Lt0/j;->j:Lt0/j$b;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lt0/j;->a(Ljava/io/InputStream;IILj0/e;Lt0/j$b;)Lm0/w;

    move-result-object p0

    return-object p0

    :goto_1b
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lt0/f;->b:Lt0/j;

    new-instance v1, Lt0/o$b;

    iget-object p0, v0, Lt0/j;->d:Ljava/util/List;

    iget-object v2, v0, Lt0/j;->c:Ln0/b;

    invoke-direct {v1, p1, p0, v2}, Lt0/o$b;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ln0/b;)V

    sget-object v5, Lt0/j;->j:Lt0/j$b;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lt0/j;->b(Lt0/o;IILj0/e;Lt0/j$b;)Lm0/w;

    move-result-object p0

    return-object p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
