.class public abstract Lq3/a1;
.super Lq3/b0;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lq3/b0;->Key:Lq3/b0$a;

    sget-object v1, Lq3/z0;->a:Lq3/z0;

    const-string v2, "baseKey"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "safeCast"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Lb3/b;

    if-eqz v1, :cond_14

    iget-object v0, v0, Lb3/b;->b:Lb3/f$b;

    :cond_14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq3/b0;-><init>()V

    return-void
.end method
