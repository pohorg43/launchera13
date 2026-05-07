.class public final Lv3/i;
.super Lq3/b0;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lq3/m0;


# instance fields
.field public final a:Lq3/b0;

.field public final b:I

.field public final synthetic c:Lq3/m0;

.field public final d:Lv3/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/m<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lq3/b0;I)V
    .registers 3

    invoke-direct {p0}, Lq3/b0;-><init>()V

    iput-object p1, p0, Lv3/i;->a:Lq3/b0;

    iput p2, p0, Lv3/i;->b:I

    instance-of p2, p1, Lq3/m0;

    if-eqz p2, :cond_e

    check-cast p1, Lq3/m0;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_13

    sget-object p1, Lq3/j0;->b:Lq3/m0;

    :cond_13
    iput-object p1, p0, Lv3/i;->c:Lq3/m0;

    new-instance p1, Lv3/m;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lv3/m;-><init>(Z)V

    iput-object p1, p0, Lv3/i;->d:Lv3/m;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/i;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(JLq3/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lv3/i;->c:Lq3/m0;

    invoke-interface {p0, p1, p2, p3}, Lq3/m0;->c(JLq3/k;)V

    return-void
.end method

.method public dispatch(Lb3/f;Ljava/lang/Runnable;)V
    .registers 3

    iget-object p1, p0, Lv3/i;->d:Lv3/m;

    invoke-virtual {p1, p2}, Lv3/m;->a(Ljava/lang/Object;)Z

    iget p1, p0, Lv3/i;->runningWorkers:I

    iget p2, p0, Lv3/i;->b:I

    if-lt p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_11

    goto :goto_1d

    :cond_11
    invoke-virtual {p0}, Lv3/i;->l()Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_1d

    :cond_18
    iget-object p1, p0, Lv3/i;->a:Lq3/b0;

    invoke-virtual {p1, p0, p0}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    :goto_1d
    return-void
.end method

.method public dispatchYield(Lb3/f;Ljava/lang/Runnable;)V
    .registers 3

    iget-object p1, p0, Lv3/i;->d:Lv3/m;

    invoke-virtual {p1, p2}, Lv3/m;->a(Ljava/lang/Object;)Z

    iget p1, p0, Lv3/i;->runningWorkers:I

    iget p2, p0, Lv3/i;->b:I

    if-lt p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_11

    goto :goto_1d

    :cond_11
    invoke-virtual {p0}, Lv3/i;->l()Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_1d

    :cond_18
    iget-object p1, p0, Lv3/i;->a:Lq3/b0;

    invoke-virtual {p1, p0, p0}, Lq3/b0;->dispatchYield(Lb3/f;Ljava/lang/Runnable;)V

    :goto_1d
    return-void
.end method

.method public f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;
    .registers 5

    iget-object p0, p0, Lv3/i;->c:Lq3/m0;

    invoke-interface {p0, p1, p2, p3, p4}, Lq3/m0;->f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;

    move-result-object p0

    return-object p0
.end method

.method public final l()Z
    .registers 4

    iget-object v0, p0, Lv3/i;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lv3/i;->runningWorkers:I

    iget v2, p0, Lv3/i;->b:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_14

    if-lt v1, v2, :cond_c

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_c
    :try_start_c
    iget v1, p0, Lv3/i;->runningWorkers:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lv3/i;->runningWorkers:I
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    monitor-exit v0

    return v2

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public limitedParallelism(I)Lq3/b0;
    .registers 3

    invoke-static {p1}, Li1/d;->a(I)V

    iget v0, p0, Lv3/i;->b:I

    if-lt p1, v0, :cond_8

    return-object p0

    :cond_8
    invoke-super {p0, p1}, Lq3/b0;->limitedParallelism(I)Lq3/b0;

    move-result-object p0

    return-object p0
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    :cond_2
    iget-object v2, p0, Lv3/i;->d:Lv3/m;

    invoke-virtual {v2}, Lv3/m;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_2a

    :try_start_c
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_16

    :catchall_10
    move-exception v2

    sget-object v3, Lb3/h;->a:Lb3/h;

    invoke-static {v3, v2}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    :goto_16
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lv3/i;->a:Lq3/b0;

    invoke-virtual {v2, p0}, Lq3/b0;->isDispatchNeeded(Lb3/f;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lv3/i;->a:Lq3/b0;

    invoke-virtual {v0, p0, p0}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    return-void

    :cond_2a
    iget-object v1, p0, Lv3/i;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2d
    iget v2, p0, Lv3/i;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lv3/i;->runningWorkers:I

    iget-object v2, p0, Lv3/i;->d:Lv3/m;

    invoke-virtual {v2}, Lv3/m;->c()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_45

    if-nez v2, :cond_3d

    monitor-exit v1

    return-void

    :cond_3d
    :try_start_3d
    iget v2, p0, Lv3/i;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lv3/i;->runningWorkers:I
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_45

    monitor-exit v1

    goto :goto_1

    :catchall_45
    move-exception p0

    monitor-exit v1

    throw p0
.end method
