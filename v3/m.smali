.class public Lv3/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _cur:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lv3/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv3/n;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lv3/n;-><init>(IZ)V

    iput-object v0, p0, Lv3/m;->_cur:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lv3/m;->_cur:Ljava/lang/Object;

    check-cast v0, Lv3/n;

    invoke-virtual {v0, p1}, Lv3/n;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-eq v1, v2, :cond_13

    const/4 v0, 0x2

    if-eq v1, v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    sget-object v1, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lv3/n;->e()Lv3/n;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1d
    return v2
.end method

.method public final b()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lv3/m;->_cur:Ljava/lang/Object;

    check-cast v0, Lv3/n;

    invoke-virtual {v0}, Lv3/n;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    sget-object v1, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lv3/n;->e()Lv3/n;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()I
    .registers 1

    iget-object p0, p0, Lv3/m;->_cur:Ljava/lang/Object;

    check-cast p0, Lv3/n;

    invoke-virtual {p0}, Lv3/n;->c()I

    move-result p0

    return p0
.end method

.method public final d()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lv3/m;->_cur:Ljava/lang/Object;

    check-cast v0, Lv3/n;

    invoke-virtual {v0}, Lv3/n;->f()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lv3/n;->g:Lv3/y;

    if-eq v1, v2, :cond_d

    return-object v1

    :cond_d
    sget-object v1, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lv3/n;->e()Lv3/n;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
