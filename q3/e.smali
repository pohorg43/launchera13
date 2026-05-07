.class public final Lq3/e;
.super Lq3/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Thread;

.field public final d:Lq3/v0;


# direct methods
.method public constructor <init>(Lb3/f;Ljava/lang/Thread;Lq3/v0;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lq3/a;-><init>(Lb3/f;ZZ)V

    iput-object p2, p0, Lq3/e;->c:Ljava/lang/Thread;

    iput-object p3, p0, Lq3/e;->d:Lq3/v0;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lq3/e;->c:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p0, p0, Lq3/e;->c:Ljava/lang/Thread;

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_11
    return-void
.end method
