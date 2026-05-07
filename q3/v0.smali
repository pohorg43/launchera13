.class public abstract Lq3/v0;
.super Lq3/b0;
.source ""


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:J

.field public b:Z

.field public c:Lv3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/a<",
            "Lq3/p0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq3/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Z)V
    .registers 6

    iget-wide v0, p0, Lq3/v0;->a:J

    invoke-virtual {p0, p1}, Lq3/v0;->m(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lq3/v0;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_10

    return-void

    :cond_10
    iget-boolean p1, p0, Lq3/v0;->b:Z

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lq3/v0;->shutdown()V

    :cond_17
    return-void
.end method

.method public final limitedParallelism(I)Lq3/b0;
    .registers 2

    invoke-static {p1}, Li1/d;->a(I)V

    return-object p0
.end method

.method public final m(Z)J
    .registers 2

    if-eqz p1, :cond_8

    const-wide p0, 0x100000000L

    goto :goto_a

    :cond_8
    const-wide/16 p0, 0x1

    :goto_a
    return-wide p0
.end method

.method public final n(Lq3/p0;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/p0<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lq3/v0;->c:Lv3/a;

    if-nez v0, :cond_b

    new-instance v0, Lv3/a;

    invoke-direct {v0}, Lv3/a;-><init>()V

    iput-object v0, p0, Lq3/v0;->c:Lv3/a;

    :cond_b
    iget-object v1, v0, Lv3/a;->a:[Ljava/lang/Object;

    iget p0, v0, Lv3/a;->c:I

    aput-object p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    iput p0, v0, Lv3/a;->c:I

    iget v4, v0, Lv3/a;->b:I

    if-ne p0, v4, :cond_3e

    array-length p0, v1

    shl-int/lit8 p1, p0, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lz2/h;->m([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    iget-object v5, v0, Lv3/a;->a:[Ljava/lang/Object;

    array-length v1, v5

    iget v9, v0, Lv3/a;->b:I

    sub-int v7, v1, v9

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lz2/h;->m([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    iput-object p1, v0, Lv3/a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v0, Lv3/a;->b:I

    iput p0, v0, Lv3/a;->c:I

    :cond_3e
    return-void
.end method

.method public final r(Z)V
    .registers 6

    iget-wide v0, p0, Lq3/v0;->a:J

    invoke-virtual {p0, p1}, Lq3/v0;->m(Z)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lq3/v0;->a:J

    if-nez p1, :cond_e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq3/v0;->b:Z

    :cond_e
    return-void
.end method

.method public shutdown()V
    .registers 1

    return-void
.end method

.method public final v()Z
    .registers 6

    iget-wide v0, p0, Lq3/v0;->a:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lq3/v0;->m(Z)J

    move-result-wide v3

    cmp-long p0, v0, v3

    if-ltz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public x()J
    .registers 3

    invoke-virtual {p0}, Lq3/v0;->y()Z

    move-result p0

    if-nez p0, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final y()Z
    .registers 7

    iget-object p0, p0, Lq3/v0;->c:Lv3/a;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    iget v1, p0, Lv3/a;->b:I

    iget v2, p0, Lv3/a;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_f

    goto :goto_22

    :cond_f
    iget-object v2, p0, Lv3/a;->a:[Ljava/lang/Object;

    aget-object v5, v2, v1

    aput-object v3, v2, v1

    add-int/2addr v1, v4

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lv3/a;->b:I

    const-string p0, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    invoke-static {v5, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v5

    :goto_22
    check-cast v3, Lq3/p0;

    if-nez v3, :cond_27

    return v0

    :cond_27
    invoke-virtual {v3}, Lq3/p0;->run()V

    return v4
.end method
