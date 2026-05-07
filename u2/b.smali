.class public final Lu2/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lu2/b;->a:Ljava/util/Queue;

    return-void
.end method

.method public static final declared-synchronized a()[I
    .registers 3

    const-class v0, Lu2/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lu2/b;->a:Ljava/util/Queue;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    new-array v1, v1, [I

    goto :goto_1a

    :cond_12
    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_1a
    const/4 v2, 0x0

    aput v2, v1, v2

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized b([I)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lu2/b;

    monitor-enter v0

    :try_start_3
    array-length v1, p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    sget-object v1, Lu2/b;->a:Ljava/util/Queue;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f

    const/16 v3, 0x400

    if-lt v2, v3, :cond_18

    monitor-exit v0

    return-void

    :cond_18
    :try_start_18
    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method
