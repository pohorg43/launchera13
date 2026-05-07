.class public final Lq3/n1$a;
.super Lq3/m1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lq3/n1;

.field public final f:Lq3/n1$b;

.field public final g:Lq3/q;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq3/n1;Lq3/n1$b;Lq3/q;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lq3/m1;-><init>()V

    iput-object p1, p0, Lq3/n1$a;->e:Lq3/n1;

    iput-object p2, p0, Lq3/n1$a;->f:Lq3/n1$b;

    iput-object p3, p0, Lq3/n1$a;->g:Lq3/q;

    iput-object p4, p0, Lq3/n1$a;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/n1$a;->s(Ljava/lang/Throwable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public s(Ljava/lang/Throwable;)V
    .registers 5

    iget-object p1, p0, Lq3/n1$a;->e:Lq3/n1;

    iget-object v0, p0, Lq3/n1$a;->f:Lq3/n1$b;

    iget-object v1, p0, Lq3/n1$a;->g:Lq3/q;

    iget-object p0, p0, Lq3/n1$a;->h:Ljava/lang/Object;

    sget-object v2, Lq3/n1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v1}, Lq3/n1;->W(Lv3/l;)Lq3/q;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0, v1, p0}, Lq3/n1;->g0(Lq3/n1$b;Lq3/q;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1e

    :cond_17
    invoke-virtual {p1, v0, p0}, Lq3/n1;->J(Lq3/n1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lq3/n1;->B(Ljava/lang/Object;)V

    :goto_1e
    return-void
.end method
