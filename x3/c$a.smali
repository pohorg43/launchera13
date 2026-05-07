.class public final Lx3/c$a;
.super Lx3/c$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final f:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lx3/c;


# direct methods
.method public constructor <init>(Lx3/c;Ljava/lang/Object;Lq3/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx3/c$a;->g:Lx3/c;

    invoke-direct {p0, p1, p2}, Lx3/c$b;-><init>(Lx3/c;Ljava/lang/Object;)V

    iput-object p3, p0, Lx3/c$a;->f:Lq3/k;

    return-void
.end method


# virtual methods
.method public s()V
    .registers 2

    iget-object p0, p0, Lx3/c$a;->f:Lq3/k;

    sget-object v0, Lq3/m;->a:Lv3/y;

    invoke-interface {p0, v0}, Lq3/k;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public t()Z
    .registers 8

    sget-object v0, Lx3/c$b;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Lx3/c$a;->f:Lq3/k;

    sget-object v3, Ly2/p;->a:Ly2/p;

    const/4 v4, 0x0

    new-instance v5, Lx3/c$a$a;

    iget-object v6, p0, Lx3/c$a;->g:Lx3/c;

    invoke-direct {v5, v6, p0}, Lx3/c$a$a;-><init>(Lx3/c;Lx3/c$a;)V

    invoke-interface {v0, v3, v4, v5}, Lq3/k;->m(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1e

    move v1, v2

    :cond_1e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "LockCont["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx3/c$b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx3/c$a;->f:Lq3/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx3/c$a;->g:Lx3/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
