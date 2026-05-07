.class public Lcom/bumptech/glide/g;
.super Lc1/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lc1/a<",
        "Lcom/bumptech/glide/g<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final E:Landroid/content/Context;

.field public final F:Lcom/bumptech/glide/h;

.field public final G:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final H:Lcom/bumptech/glide/d;

.field public I:Lcom/bumptech/glide/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public J:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public K:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc1/d<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public L:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc1/e;

    invoke-direct {v0}, Lc1/e;-><init>()V

    sget-object v1, Lm0/k;->b:Lm0/k;

    invoke-virtual {v0, v1}, Lc1/a;->d(Lm0/k;)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    sget-object v1, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/e;

    invoke-virtual {v0, v1}, Lc1/a;->g(Lcom/bumptech/glide/e;)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc1/a;->j(Z)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 8
    .param p1  # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/h;

    iput-object p3, p0, Lcom/bumptech/glide/g;->G:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/g;->E:Landroid/content/Context;

    iget-object p4, p2, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object p4, p4, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    iget-object v0, p4, Lcom/bumptech/glide/d;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    if-nez v0, :cond_40

    iget-object p4, p4, Lcom/bumptech/glide/d;->e:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_21
    :goto_21
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    goto :goto_21

    :cond_40
    if-nez v0, :cond_44

    sget-object v0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/i;

    :cond_44
    iput-object v0, p0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/i;

    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    iput-object p1, p0, Lcom/bumptech/glide/g;->H:Lcom/bumptech/glide/d;

    iget-object p1, p2, Lcom/bumptech/glide/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_50
    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc1/d;

    if-eqz p3, :cond_50

    iget-object p4, p0, Lcom/bumptech/glide/g;->K:Ljava/util/List;

    if-nez p4, :cond_69

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/bumptech/glide/g;->K:Ljava/util/List;

    :cond_69
    iget-object p4, p0, Lcom/bumptech/glide/g;->K:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_6f
    monitor-enter p2

    :try_start_70
    iget-object p1, p2, Lcom/bumptech/glide/h;->k:Lc1/e;
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_77

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->n(Lc1/a;)Lcom/bumptech/glide/g;

    return-void

    :catchall_77
    move-exception p0

    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public bridge synthetic a(Lc1/a;)Lc1/a;
    .registers 2
    .param p1  # Lc1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->n(Lc1/a;)Lcom/bumptech/glide/g;

    move-result-object p0

    return-object p0
.end method

.method public b()Lc1/a;
    .registers 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lc1/a;->b()Lc1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/i;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lc1/a;->b()Lc1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/i;

    return-object p0
.end method

.method public n(Lc1/a;)Lcom/bumptech/glide/g;
    .registers 3
    .param p1  # Lc1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/a<",
            "*>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lc1/a;->a(Lc1/a;)Lc1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public final o(Ljava/lang/Object;Ld1/d;Lc1/d;Lc1/c;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILc1/a;Ljava/util/concurrent/Executor;)Lc1/b;
    .registers 22
    .param p3  # Lc1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Lc1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ld1/d<",
            "TTranscodeType;>;",
            "Lc1/d<",
            "TTranscodeType;>;",
            "Lc1/c;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/e;",
            "II",
            "Lc1/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc1/b;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/bumptech/glide/g;->p(Ljava/lang/Object;Ld1/d;Lc1/d;Lc1/a;Lc1/c;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILjava/util/concurrent/Executor;)Lc1/b;

    move-result-object v0

    return-object v0
.end method

.method public final p(Ljava/lang/Object;Ld1/d;Lc1/d;Lc1/a;Lc1/c;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILjava/util/concurrent/Executor;)Lc1/b;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ld1/d<",
            "TTranscodeType;>;",
            "Lc1/d<",
            "TTranscodeType;>;",
            "Lc1/a<",
            "*>;",
            "Lc1/c;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/e;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc1/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/g;->E:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/g;->H:Lcom/bumptech/glide/d;

    iget-object v4, v0, Lcom/bumptech/glide/g;->J:Ljava/lang/Object;

    iget-object v5, v0, Lcom/bumptech/glide/g;->G:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/g;->K:Ljava/util/List;

    iget-object v14, v2, Lcom/bumptech/glide/d;->f:Lm0/l;

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Le1/a;->b:Le1/c;

    new-instance v17, Lc1/g;

    move-object/from16 v0, v17

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    invoke-direct/range {v0 .. v16}, Lc1/g;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lc1/a;IILcom/bumptech/glide/e;Ld1/d;Lc1/d;Ljava/util/List;Lc1/c;Lm0/l;Le1/c;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method
