.class public final Lcom/oplus/glcomponent/utils/IdPool;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/utils/IdPool;

.field private static final IdList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final POOL_LIMIT:I = 0x400


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/utils/IdPool;

    invoke-direct {v0}, Lcom/oplus/glcomponent/utils/IdPool;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/utils/IdPool;->INSTANCE:Lcom/oplus/glcomponent/utils/IdPool;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getBufferId()[I
    .registers 4

    const-class v0, Lcom/oplus/glcomponent/utils/IdPool;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    new-array v1, v1, [I

    goto :goto_15

    :cond_f
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_15
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic getBufferId$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final declared-synchronized getTextureId()[I
    .registers 3

    const-class v0, Lcom/oplus/glcomponent/utils/IdPool;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    new-array v1, v1, [I

    goto :goto_15

    :cond_f
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_15
    const/4 v2, 0x0

    aput v2, v1, v2

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic getTextureId$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final declared-synchronized recycleId([I)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/oplus/glcomponent/utils/IdPool;

    monitor-enter v0

    if-nez p0, :cond_7

    monitor-exit v0

    return-void

    :cond_7
    :try_start_7
    array-length v1, p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_1e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    :try_start_d
    sget-object v1, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1e

    const/16 v3, 0x400

    if-lt v2, v3, :cond_19

    monitor-exit v0

    return-void

    :cond_19
    :try_start_19
    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized clean()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getStateId()[I
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/oplus/glcomponent/utils/IdPool;->IdList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [I

    goto :goto_13

    :cond_d
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_13
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const-string v1, "id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
