.class public Li1/o;
.super Li1/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/o$a;
    }
.end annotation


# static fields
.field public static h:Li1/o;

.field public static i:Ljava/lang/Object;


# instance fields
.field public d:Li1/q;

.field public e:Landroid/os/Handler;

.field public f:I

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li1/o;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    new-instance v0, Li1/s;

    invoke-direct {v0}, Li1/s;-><init>()V

    invoke-direct {p0, v0}, Li1/t;-><init>(Li1/r;)V

    new-instance v0, Li1/p;

    invoke-direct {v0, p0}, Li1/p;-><init>(Li1/o;)V

    iput-object v0, p0, Li1/o;->d:Li1/q;

    const/4 v0, 0x0

    iput-object v0, p0, Li1/o;->e:Landroid/os/Handler;

    const/16 v0, 0x2710

    iput v0, p0, Li1/o;->f:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Li1/o;->g:Ljava/util/Set;

    iget-object v0, p0, Li1/o;->d:Li1/q;

    invoke-virtual {p0}, Li1/t;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Li1/q;->d(Ljava/util/Map;)V

    iget-object v0, p0, Li1/o;->d:Li1/q;

    iget-object v1, p0, Li1/t;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Li1/t;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Li1/t;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_4d
    iget-object v3, p0, Li1/t;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_72

    :cond_61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Li1/t;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    :goto_72
    monitor-exit v1

    return-void

    :catchall_74
    move-exception p0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_2b .. :try_end_76} :catchall_74

    throw p0
.end method

.method public static h(Li1/o;Ljava/lang/String;Lj1/a;)V
    .registers 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_19

    const/4 v0, 0x1

    iget p2, p2, Lj1/a;->b:I

    if-eq v0, p2, :cond_13

    if-nez p2, :cond_d

    goto :goto_13

    :cond_d
    iget-object p2, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_13
    :goto_13
    iget-object p2, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_24

    iget-object p2, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    iget-object p1, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_30

    invoke-virtual {p0}, Li1/o;->l()V

    goto :goto_41

    :cond_30
    invoke-virtual {p0}, Li1/o;->k()Landroid/os/Handler;

    move-result-object p1

    iget p2, p0, Li1/o;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_41

    iget p0, p0, Li1/o;->f:I

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_41
    :goto_41
    return-void
.end method

.method public static i(Li1/o;Ljava/util/Map;)V
    .registers 6

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_47

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj1/a;

    if-eqz v2, :cond_3b

    const/4 v3, 0x1

    iget v2, v2, Lj1/a;->b:I

    if-eq v3, v2, :cond_35

    if-nez v2, :cond_2f

    goto :goto_35

    :cond_2f
    iget-object v2, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_35
    :goto_35
    iget-object v2, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_47
    iget-object p1, p0, Li1/o;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_53

    invoke-virtual {p0}, Li1/o;->l()V

    goto :goto_64

    :cond_53
    invoke-virtual {p0}, Li1/o;->k()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Li1/o;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_64

    iget p0, p0, Li1/o;->f:I

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public j(Lj1/a;Lj1/a;)Lj1/a;
    .registers 5

    if-nez p2, :cond_8

    new-instance p0, Lj1/a;

    invoke-direct {p0}, Lj1/a;-><init>()V

    return-object p0

    :cond_8
    if-nez p1, :cond_f

    new-instance p1, Lj1/a;

    invoke-direct {p1}, Lj1/a;-><init>()V

    :cond_f
    iget-object p0, p2, Lj1/a;->a:Ljava/lang/String;

    iput-object p0, p1, Lj1/a;->a:Ljava/lang/String;

    iget p0, p2, Lj1/a;->b:I

    iput p0, p1, Lj1/a;->b:I

    iget p0, p2, Lj1/a;->f:I

    iput p0, p1, Lj1/a;->f:I

    iget p0, p2, Lj1/a;->c:F

    iput p0, p1, Lj1/a;->c:F

    iget-wide v0, p2, Lj1/a;->e:J

    iput-wide v0, p1, Lj1/a;->e:J

    iget-wide v0, p2, Lj1/a;->d:J

    iput-wide v0, p1, Lj1/a;->d:J

    return-object p1
.end method

.method public final k()Landroid/os/Handler;
    .registers 4

    sget-object v0, Li1/o;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Li1/o;->e:Landroid/os/Handler;

    if-nez v1, :cond_1c

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "oaps_download"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Li1/o$a;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Li1/o$a;-><init>(Landroid/os/Looper;Li1/r;)V

    iput-object v2, p0, Li1/o;->e:Landroid/os/Handler;

    :cond_1c
    iget-object p0, p0, Li1/o;->e:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final l()V
    .registers 4

    invoke-virtual {p0}, Li1/o;->k()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Li1/o;->f:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p0, Li1/o;->f:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    iget p0, p0, Li1/o;->f:I

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
