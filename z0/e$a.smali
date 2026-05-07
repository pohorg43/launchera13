.class public Lz0/e$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz0/e;


# direct methods
.method public constructor <init>(Lz0/e;)V
    .registers 2

    iput-object p1, p0, Lz0/e$a;->a:Lz0/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lz0/e$a;->a:Lz0/e;

    iget-boolean v0, p2, Lz0/e;->c:Z

    invoke-virtual {p2, p1}, Lz0/e;->i(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p2, Lz0/e;->c:Z

    iget-object p1, p0, Lz0/e$a;->a:Lz0/e;

    iget-boolean p1, p1, Lz0/e;->c:Z

    if-eq v0, p1, :cond_7b

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "ConnectivityMonitor"

    const-string p2, "connectivity changed, isConnected: "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lz0/e$a;->a:Lz0/e;

    iget-boolean v0, v0, Lz0/e;->c:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-object p0, p0, Lz0/e$a;->a:Lz0/e;

    iget-object p1, p0, Lz0/e;->b:Lz0/c$a;

    iget-boolean p0, p0, Lz0/e;->c:Z

    check-cast p1, Lcom/bumptech/glide/h$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_7b

    iget-object p0, p1, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/h;

    monitor-enter p0

    :try_start_3f
    iget-object p1, p1, Lcom/bumptech/glide/h$b;->a:Lz0/m;

    iget-object p2, p1, Lz0/m;->a:Ljava/util/Set;

    invoke-static {p2}, Lg1/f;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4d
    :goto_4d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/b;

    invoke-interface {v0}, Lc1/b;->c()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-interface {v0}, Lc1/b;->a()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-interface {v0}, Lc1/b;->clear()V

    iget-boolean v1, p1, Lz0/m;->c:Z

    if-nez v1, :cond_70

    invoke-interface {v0}, Lc1/b;->b()V

    goto :goto_4d

    :cond_70
    iget-object v1, p1, Lz0/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_76
    monitor-exit p0

    goto :goto_7b

    :catchall_78
    move-exception p1

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_3f .. :try_end_7a} :catchall_78

    throw p1

    :cond_7b
    :goto_7b
    return-void
.end method
