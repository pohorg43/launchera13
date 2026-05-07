.class public abstract Lq3/r1;
.super Lq3/b0;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq3/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract l()Lq3/r1;
.end method

.method public limitedParallelism(I)Lq3/b0;
    .registers 2

    invoke-static {p1}, Li1/d;->a(I)V

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .registers 3

    sget-object v0, Lq3/q0;->a:Lq3/b0;

    sget-object v0, Lv3/q;->a:Lq3/r1;

    if-ne p0, v0, :cond_9

    const-string p0, "Dispatchers.Main"

    return-object p0

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0}, Lq3/r1;->l()Lq3/r1;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-object v0, v1

    :goto_10
    if-ne p0, v0, :cond_15

    const-string p0, "Dispatchers.Main.immediate"

    return-object p0

    :cond_15
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lq3/r1;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    return-object v0
.end method
