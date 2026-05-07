.class public Lcom/bumptech/glide/load/resource/gif/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/load/resource/gif/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b$c;->a:Lcom/bumptech/glide/load/resource/gif/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$c;->a:Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/gif/b;->b(Lcom/bumptech/glide/load/resource/gif/b$a;)V

    return v1

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b$c;->a:Lcom/bumptech/glide/load/resource/gif/b;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/h;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->i(Ld1/d;)V

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
