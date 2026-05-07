.class public abstract Lq3/w0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lq3/s0;
.implements Lv3/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lq3/w0$c;",
        ">;",
        "Lq3/s0;",
        "Lv3/c0;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lq3/w0$c;->a:J

    const/4 p1, -0x1

    iput p1, p0, Lq3/w0$c;->c:I

    return-void
.end method


# virtual methods
.method public a()Lv3/b0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/b0<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lq3/w0$c;->b:Ljava/lang/Object;

    instance-of v0, p0, Lv3/b0;

    if-eqz v0, :cond_9

    check-cast p0, Lv3/b0;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public b(Lv3/b0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b0<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lq3/w0$c;->b:Ljava/lang/Object;

    sget-object v1, Lq3/y0;->a:Lv3/y;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    iput-object p1, p0, Lq3/w0$c;->b:Ljava/lang/Object;

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lq3/w0$c;->c:I

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lq3/w0$c;

    iget-wide v0, p0, Lq3/w0$c;->a:J

    iget-wide p0, p1, Lq3/w0$c;->a:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_14

    :cond_f
    if-gez p0, :cond_13

    const/4 p0, -0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final declared-synchronized dispose()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lq3/w0$c;->b:Ljava/lang/Object;

    sget-object v1, Lq3/y0;->a:Lv3/y;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2b

    if-ne v0, v1, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    instance-of v2, v0, Lq3/w0$d;

    if-eqz v2, :cond_10

    check-cast v0, Lq3/w0$d;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    goto :goto_24

    :cond_14
    monitor-enter v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2b

    :try_start_15
    invoke-interface {p0}, Lv3/c0;->a()Lv3/b0;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_23

    :cond_1c
    invoke-interface {p0}, Lv3/c0;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lv3/b0;->d(I)Lv3/c0;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_28

    :goto_23
    :try_start_23
    monitor-exit v0

    :goto_24
    iput-object v1, p0, Lq3/w0$c;->b:Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0

    throw v1
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndex()I
    .registers 1

    iget p0, p0, Lq3/w0$c;->c:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "Delayed[nanos="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lq3/w0$c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
