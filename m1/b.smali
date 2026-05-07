.class public Lm1/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm1/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lm1/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk/m;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lm1/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lk/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm1/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lm1/b;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lm1/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/b;->e:Z

    if-eqz p1, :cond_22

    iput-object p1, p0, Lm1/b;->c:Lk/m;

    iput-object p0, p1, Lk/m;->b:Ljava/lang/Object;

    return-void

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springLooper is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lm1/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/d;

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lm1/b;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lm1/b;->e:Z

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm1/b;->e:Z

    iget-object p0, p0, Lm1/b;->c:Lk/m;

    invoke-virtual {p0}, Lk/m;->e()V

    :cond_1b
    return-void

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "springId "

    const-string v1, " does not reference a registered spring"

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Lm1/d;
    .registers 4

    new-instance v0, Lm1/d;

    invoke-direct {v0, p0}, Lm1/d;-><init>(Lm1/b;)V

    iget-object v1, p0, Lm1/b;->a:Ljava/util/Map;

    iget-object v2, v0, Lm1/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object p0, p0, Lm1/b;->a:Ljava/util/Map;

    iget-object v1, v0, Lm1/d;->b:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "spring is already registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(D)V
    .registers 36

    move-object/from16 v0, p0

    iget-object v1, v0, Lm1/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/i;

    invoke-interface {v2, v0}, Lm1/i;->b(Lm1/b;)V

    goto :goto_8

    :cond_18
    iget-object v1, v0, Lm1/b;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    move-object v2, v0

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_183

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm1/d;

    invoke-virtual {v3}, Lm1/d;->b()Z

    move-result v5

    if-eqz v5, :cond_38

    iget-boolean v5, v3, Lm1/d;->h:Z

    if-nez v5, :cond_36

    goto :goto_38

    :cond_36
    const/4 v5, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v5, 0x1

    :goto_39
    if-eqz v5, :cond_17c

    const-wide v7, 0x408f400000000000L  # 1000.0

    div-double v7, p1, v7

    invoke-virtual {v3}, Lm1/d;->b()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-boolean v5, v3, Lm1/d;->h:Z

    if-eqz v5, :cond_4d

    goto :goto_1e

    :cond_4d
    const-wide v9, 0x3fb0624dd2f1a9fcL  # 0.064

    cmpl-double v5, v7, v9

    if-lez v5, :cond_57

    move-wide v7, v9

    :cond_57
    iget-wide v9, v3, Lm1/d;->j:D

    add-double/2addr v9, v7

    iput-wide v9, v3, Lm1/d;->j:D

    iget-object v5, v3, Lm1/d;->a:Lm1/e;

    iget-wide v7, v5, Lm1/e;->b:D

    iget-wide v9, v5, Lm1/e;->a:D

    iget-object v5, v3, Lm1/d;->c:Lm1/d$b;

    iget-wide v11, v5, Lm1/d$b;->a:D

    iget-wide v13, v5, Lm1/d$b;->b:D

    iget-object v5, v3, Lm1/d;->e:Lm1/d$b;

    move-wide v15, v7

    iget-wide v6, v5, Lm1/d$b;->a:D

    iget-wide v4, v5, Lm1/d$b;->b:D

    move-wide/from16 v17, v9

    :goto_71
    iget-wide v8, v3, Lm1/d;->j:D

    const-wide v19, 0x3f50624dd2f1a9fcL  # 0.001

    cmpl-double v21, v8, v19

    if-ltz v21, :cond_ee

    sub-double v8, v8, v19

    iput-wide v8, v3, Lm1/d;->j:D

    cmpg-double v4, v8, v19

    if-gez v4, :cond_8a

    iget-object v4, v3, Lm1/d;->d:Lm1/d$b;

    iput-wide v11, v4, Lm1/d$b;->a:D

    iput-wide v13, v4, Lm1/d$b;->b:D

    :cond_8a
    iget-wide v4, v3, Lm1/d;->g:D

    sub-double v6, v4, v6

    mul-double/2addr v6, v15

    mul-double v8, v17, v13

    sub-double/2addr v6, v8

    mul-double v8, v13, v19

    const-wide/high16 v21, 0x3fe0000000000000L  # 0.5

    mul-double v8, v8, v21

    add-double/2addr v8, v11

    mul-double v23, v6, v19

    mul-double v23, v23, v21

    add-double v23, v23, v13

    sub-double v8, v4, v8

    mul-double/2addr v8, v15

    mul-double v25, v17, v23

    sub-double v8, v8, v25

    mul-double v25, v23, v19

    mul-double v25, v25, v21

    add-double v25, v25, v11

    mul-double v27, v8, v19

    mul-double v27, v27, v21

    add-double v27, v27, v13

    sub-double v21, v4, v25

    mul-double v21, v21, v15

    mul-double v25, v17, v27

    sub-double v21, v21, v25

    mul-double v25, v27, v19

    add-double v25, v25, v11

    mul-double v29, v21, v19

    add-double v29, v29, v13

    sub-double v4, v4, v25

    mul-double/2addr v4, v15

    mul-double v31, v17, v29

    sub-double v4, v4, v31

    add-double v23, v23, v27

    const-wide/high16 v27, 0x4000000000000000L  # 2.0

    mul-double v23, v23, v27

    add-double v23, v23, v13

    add-double v23, v23, v29

    const-wide v31, 0x3fc5555555555555L  # 0.16666666666666666

    mul-double v23, v23, v31

    add-double v8, v8, v21

    mul-double v8, v8, v27

    add-double/2addr v8, v6

    add-double/2addr v8, v4

    mul-double v8, v8, v31

    mul-double v23, v23, v19

    add-double v11, v23, v11

    mul-double v8, v8, v19

    add-double/2addr v13, v8

    move-wide/from16 v6, v25

    move-wide/from16 v4, v29

    goto :goto_71

    :cond_ee
    iget-object v10, v3, Lm1/d;->e:Lm1/d$b;

    iput-wide v6, v10, Lm1/d$b;->a:D

    iput-wide v4, v10, Lm1/d$b;->b:D

    iget-object v4, v3, Lm1/d;->c:Lm1/d$b;

    iput-wide v11, v4, Lm1/d$b;->a:D

    iput-wide v13, v4, Lm1/d$b;->b:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v8, v5

    if-lez v7, :cond_118

    div-double v8, v8, v19

    mul-double/2addr v11, v8

    iget-object v7, v3, Lm1/d;->d:Lm1/d$b;

    iget-wide v5, v7, Lm1/d$b;->a:D

    const-wide/high16 v19, 0x3ff0000000000000L  # 1.0

    sub-double v19, v19, v8

    mul-double v5, v5, v19

    add-double/2addr v5, v11

    iput-wide v5, v4, Lm1/d$b;->a:D

    mul-double/2addr v13, v8

    iget-wide v5, v7, Lm1/d$b;->b:D

    mul-double v5, v5, v19

    add-double/2addr v5, v13

    iput-wide v5, v4, Lm1/d$b;->b:D

    :cond_118
    invoke-virtual {v3}, Lm1/d;->b()Z

    move-result v4

    if-nez v4, :cond_11f

    goto :goto_14b

    :cond_11f
    const-wide/16 v4, 0x0

    cmpl-double v2, v15, v4

    if-lez v2, :cond_12e

    iget-wide v4, v3, Lm1/d;->g:D

    iput-wide v4, v3, Lm1/d;->f:D

    iget-object v2, v3, Lm1/d;->c:Lm1/d$b;

    iput-wide v4, v2, Lm1/d$b;->a:D

    goto :goto_136

    :cond_12e
    iget-object v2, v3, Lm1/d;->c:Lm1/d$b;

    iget-wide v4, v2, Lm1/d$b;->a:D

    iput-wide v4, v3, Lm1/d;->g:D

    iput-wide v4, v3, Lm1/d;->f:D

    :goto_136
    iget-object v2, v3, Lm1/d;->c:Lm1/d$b;

    iget-wide v4, v2, Lm1/d$b;->b:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v6, v4

    if-nez v4, :cond_141

    goto :goto_14a

    :cond_141
    iput-wide v6, v2, Lm1/d$b;->b:D

    iget-object v2, v3, Lm1/d;->k:Lm1/b;

    iget-object v4, v3, Lm1/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lm1/b;->a(Ljava/lang/String;)V

    :goto_14a
    const/4 v2, 0x1

    :goto_14b
    iget-boolean v4, v3, Lm1/d;->h:Z

    if-eqz v4, :cond_154

    const/4 v8, 0x0

    iput-boolean v8, v3, Lm1/d;->h:Z

    const/4 v4, 0x1

    goto :goto_156

    :cond_154
    const/4 v8, 0x0

    move v4, v8

    :goto_156
    if-eqz v2, :cond_15c

    const/4 v2, 0x1

    iput-boolean v2, v3, Lm1/d;->h:Z

    const/4 v8, 0x1

    :cond_15c
    iget-object v2, v3, Lm1/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_162
    :goto_162
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm1/g;

    if-eqz v4, :cond_173

    invoke-interface {v5, v3}, Lm1/g;->onSpringActivate(Lm1/d;)V

    :cond_173
    invoke-interface {v5, v3}, Lm1/g;->onSpringUpdate(Lm1/d;)V

    if-eqz v8, :cond_162

    invoke-interface {v5, v3}, Lm1/g;->onSpringAtRest(Lm1/d;)V

    goto :goto_162

    :cond_17c
    iget-object v4, v2, Lm1/b;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_183
    iget-object v1, v0, Lm1/b;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm1/b;->e:Z

    :cond_18e
    iget-object v1, v0, Lm1/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_194
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/i;

    invoke-interface {v2, v0}, Lm1/i;->a(Lm1/b;)V

    goto :goto_194

    :cond_1a4
    iget-boolean v1, v0, Lm1/b;->e:Z

    if-eqz v1, :cond_1ad

    iget-object v0, v0, Lm1/b;->c:Lk/m;

    invoke-virtual {v0}, Lk/m;->f()V

    :cond_1ad
    return-void
.end method
