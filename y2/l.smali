.class public final Ly2/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly2/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly2/e<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;I)V
    .registers 4

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/l;->a:Lkotlin/jvm/functions/Function0;

    sget-object p1, Ly2/n;->a:Ly2/n;

    iput-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    iput-object p0, p0, Ly2/l;->c:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ly2/b;

    invoke-virtual {p0}, Ly2/l;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ly2/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ly2/l;->b:Ljava/lang/Object;

    sget-object v1, Ly2/n;->a:Ly2/n;

    if-eq v0, v1, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Ly2/l;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v2, p0, Ly2/l;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_f

    goto :goto_1d

    :cond_f
    iget-object v1, p0, Ly2/l;->a:Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ly2/l;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ly2/l;->a:Lkotlin/jvm/functions/Function0;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    :goto_1d
    monitor-exit v0

    return-object v2

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ly2/l;->b:Ljava/lang/Object;

    sget-object v1, Ly2/n;->a:Ly2/n;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ly2/l;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_14
    const-string p0, "Lazy value not initialized yet."

    :goto_16
    return-object p0
.end method
