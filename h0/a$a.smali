.class public Lh0/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh0/a;


# direct methods
.method public constructor <init>(Lh0/a;)V
    .registers 2

    iput-object p1, p0, Lh0/a$a;->a:Lh0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lh0/a$a;->a:Lh0/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh0/a$a;->a:Lh0/a;

    iget-object v2, v1, Lh0/a;->i:Ljava/io/Writer;

    if-nez v2, :cond_b

    monitor-exit v0

    goto :goto_21

    :cond_b
    invoke-virtual {v1}, Lh0/a;->o()V

    iget-object v1, p0, Lh0/a$a;->a:Lh0/a;

    invoke-virtual {v1}, Lh0/a;->h()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lh0/a$a;->a:Lh0/a;

    invoke-virtual {v1}, Lh0/a;->m()V

    iget-object p0, p0, Lh0/a$a;->a:Lh0/a;

    const/4 v1, 0x0

    iput v1, p0, Lh0/a;->k:I

    :cond_20
    monitor-exit v0

    :goto_21
    const/4 p0, 0x0

    return-object p0

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method
