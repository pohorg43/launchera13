.class public Lt0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/w;
.implements Lm0/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm0/w<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lm0/s;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lm0/w;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lt0/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lt0/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lt0/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ln0/c;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lt0/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lt0/e;->b:Ljava/lang/Object;

    const-string p1, "BitmapPool must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lt0/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lm0/w;)Lm0/w;
    .registers 3
    .param p0  # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lm0/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lm0/w<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lm0/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lt0/e;

    invoke-direct {v0, p0, p1}, Lt0/e;-><init>(Landroid/content/res/Resources;Lm0/w;)V

    return-object v0
.end method

.method public static d(Landroid/graphics/Bitmap;Ln0/c;)Lt0/e;
    .registers 3
    .param p0  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # Ln0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lt0/e;

    invoke-direct {v0, p0, p1}, Lt0/e;-><init>(Landroid/graphics/Bitmap;Ln0/c;)V

    return-object v0
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lt0/e;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lt0/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lg1/f;->c(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Lt0/e;->c:Ljava/lang/Object;

    check-cast p0, Lm0/w;

    invoke-interface {p0}, Lm0/w;->b()I

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public c()Ljava/lang/Class;
    .registers 1

    iget p0, p0, Lt0/e;->a:I

    packed-switch p0, :pswitch_data_c

    goto :goto_9

    :pswitch_6  #0x0
    const-class p0, Landroid/graphics/Bitmap;

    return-object p0

    :goto_9
    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lt0/e;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_b

    :pswitch_6  #0x0
    iget-object p0, p0, Lt0/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :goto_b
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lt0/e;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object p0, p0, Lt0/e;->c:Ljava/lang/Object;

    check-cast p0, Lm0/w;

    invoke-interface {p0}, Lm0/w;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public initialize()V
    .registers 2

    iget v0, p0, Lt0/e;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lt0/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void

    :goto_e
    iget-object p0, p0, Lt0/e;->c:Ljava/lang/Object;

    check-cast p0, Lm0/w;

    instance-of v0, p0, Lm0/s;

    if-eqz v0, :cond_1b

    check-cast p0, Lm0/s;

    invoke-interface {p0}, Lm0/s;->initialize()V

    :cond_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public recycle()V
    .registers 2

    iget v0, p0, Lt0/e;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lt0/e;->c:Ljava/lang/Object;

    check-cast v0, Ln0/c;

    iget-object p0, p0, Lt0/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    return-void

    :goto_12
    iget-object p0, p0, Lt0/e;->c:Ljava/lang/Object;

    check-cast p0, Lm0/w;

    invoke-interface {p0}, Lm0/w;->recycle()V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
