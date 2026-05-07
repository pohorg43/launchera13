.class public final Lq3/f2;
.super Lv3/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ly2/i<",
            "Lb3/f;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/f;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "Lb3/d<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Lq3/g2;->a:Lq3/g2;

    invoke-interface {p1, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-interface {p1, v0}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p1

    :cond_c
    invoke-direct {p0, p1, p2}, Lv3/w;-><init>(Lb3/f;Lb3/d;)V

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lq3/f2;->d:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lq3/f2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly2/i;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    goto :goto_1a

    :cond_c
    iget-object v2, v0, Ly2/i;->a:Ljava/lang/Object;

    check-cast v2, Lb3/f;

    iget-object v0, v0, Ly2/i;->b:Ljava/lang/Object;

    invoke-static {v2, v0}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    iget-object v0, p0, Lq3/f2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1a
    iget-object v0, p0, Lv3/w;->c:Lb3/d;

    invoke-static {p1, v0}, Li1/k;->c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lv3/w;->c:Lb3/d;

    invoke-interface {v0}, Lb3/d;->getContext()Lb3/f;

    move-result-object v2

    invoke-static {v2, v1}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lv3/a0;->a:Lv3/y;

    if-eq v3, v4, :cond_32

    invoke-static {v0, v2, v3}, Lq3/z;->d(Lb3/d;Lb3/f;Ljava/lang/Object;)Lq3/f2;

    move-result-object v1

    :cond_32
    :try_start_32
    iget-object p0, p0, Lv3/w;->c:Lb3/d;

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_43

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lq3/f2;->l0()Z

    move-result p0

    if-eqz p0, :cond_42

    :cond_3f
    invoke-static {v2, v3}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    :cond_42
    return-void

    :catchall_43
    move-exception p0

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lq3/f2;->l0()Z

    move-result p1

    if-eqz p1, :cond_4f

    :cond_4c
    invoke-static {v2, v3}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    :cond_4f
    throw p0
.end method

.method public final l0()Z
    .registers 2

    iget-object v0, p0, Lq3/f2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lq3/f2;->d:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
