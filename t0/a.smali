.class public Lt0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lt0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lt0/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv0/d;Ln0/c;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lt0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lt0/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lj0/e;)Z
    .registers 4

    iget v0, p0, Lt0/a;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lt0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/f;

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/f;->a(Ljava/lang/Object;Lj0/e;)Z

    move-result p0

    return p0

    :goto_f
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.resource"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;IILj0/e;)Lm0/w;
    .registers 6

    iget v0, p0, Lt0/a;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_17

    :pswitch_6  #0x0
    iget-object v0, p0, Lt0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/f;->b(Ljava/lang/Object;IILj0/e;)Lm0/w;

    move-result-object p1

    iget-object p0, p0, Lt0/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    invoke-static {p0, p1}, Lt0/e;->a(Landroid/content/res/Resources;Lm0/w;)Lm0/w;

    move-result-object p0

    return-object p0

    :goto_17
    check-cast p1, Landroid/net/Uri;

    iget-object p4, p0, Lt0/a;->b:Ljava/lang/Object;

    check-cast p4, Lv0/d;

    invoke-virtual {p4, p1}, Lv0/d;->c(Landroid/net/Uri;)Lm0/w;

    move-result-object p1

    if-nez p1, :cond_25

    const/4 p0, 0x0

    goto :goto_35

    :cond_25
    check-cast p1, Lv0/b;

    invoke-virtual {p1}, Lv0/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lt0/a;->c:Ljava/lang/Object;

    check-cast p0, Ln0/c;

    invoke-static {p0, p1, p2, p3}, Lt0/k;->a(Ln0/c;Landroid/graphics/drawable/Drawable;II)Lm0/w;

    move-result-object p0

    :goto_35
    return-object p0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
