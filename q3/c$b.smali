.class public final Lq3/c$b;
.super Lq3/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:[Lq3/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.AwaitAllNode;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/c;[Lq3/c$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.AwaitAllNode;)V"
        }
    .end annotation

    invoke-direct {p0}, Lq3/i;-><init>()V

    iput-object p2, p0, Lq3/c$b;->a:[Lq3/c$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0}, Lq3/c$b;->b()V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object p0, p0, Lq3/c$b;->a:[Lq3/c$a;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lq3/c$a;->f:Lq3/s0;

    if-eqz v2, :cond_f

    goto :goto_15

    :cond_f
    const-string v2, "handle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_15
    invoke-interface {v2}, Lq3/s0;->dispose()V

    goto :goto_4

    :cond_19
    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lq3/c$b;->b()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DisposeHandlersOnCancel["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lq3/c$b;->a:[Lq3/c$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
