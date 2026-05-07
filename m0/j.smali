.class public Lm0/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/f<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field public final c:Ly0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/e<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field public final d:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Ly0/e;Landroidx/core/util/Pools$Pool;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/f<",
            "TDataType;TResourceType;>;>;",
            "Ly0/e<",
            "TResourceType;TTranscode;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/j;->a:Ljava/lang/Class;

    iput-object p4, p0, Lm0/j;->b:Ljava/util/List;

    iput-object p5, p0, Lm0/j;->c:Ly0/e;

    iput-object p6, p0, Lm0/j;->d:Landroidx/core/util/Pools$Pool;

    const-string p4, "Failed DecodePath{"

    invoke-static {p4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm0/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lk0/e;IILj0/e;Lm0/j$a;)Lm0/w;
    .registers 16
    .param p4  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/e<",
            "TDataType;>;II",
            "Lj0/e;",
            "Lm0/j$a<",
            "TResourceType;>;)",
            "Lm0/w<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm0/r;
        }
    .end annotation

    iget-object v0, p0, Lm0/j;->d:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, v0

    :try_start_13
    invoke-virtual/range {v2 .. v7}, Lm0/j;->b(Lk0/e;IILj0/e;Ljava/util/List;)Lm0/w;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_11e

    iget-object p2, p0, Lm0/j;->d:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    check-cast p5, Lm0/i$b;

    iget-object p2, p5, Lm0/i$b;->b:Lm0/i;

    iget-object p3, p5, Lm0/i$b;->a:Lcom/bumptech/glide/load/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lm0/w;->get()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object p5, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    const/4 v0, 0x0

    if-eq p3, p5, :cond_45

    iget-object p5, p2, Lm0/i;->a:Lm0/h;

    invoke-virtual {p5, v7}, Lm0/h;->f(Ljava/lang/Class;)Lj0/g;

    move-result-object p5

    iget-object v1, p2, Lm0/i;->h:Lcom/bumptech/glide/d;

    iget v2, p2, Lm0/i;->l:I

    iget v3, p2, Lm0/i;->m:I

    invoke-interface {p5, v1, p1, v2, v3}, Lj0/g;->b(Landroid/content/Context;Lm0/w;II)Lm0/w;

    move-result-object v1

    move-object v6, p5

    move-object p5, v1

    goto :goto_47

    :cond_45
    move-object p5, p1

    move-object v6, v0

    :goto_47
    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-interface {p1}, Lm0/w;->recycle()V

    :cond_50
    iget-object p1, p2, Lm0/i;->a:Lm0/h;

    iget-object p1, p1, Lm0/h;->c:Lcom/bumptech/glide/d;

    iget-object p1, p1, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object p1, p1, Lcom/bumptech/glide/f;->d:Lb1/f;

    invoke-interface {p5}, Lm0/w;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb1/f;->a(Ljava/lang/Class;)Lj0/f;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_66

    move p1, v2

    goto :goto_67

    :cond_66
    move p1, v1

    :goto_67
    if-eqz p1, :cond_8c

    iget-object p1, p2, Lm0/i;->a:Lm0/h;

    iget-object p1, p1, Lm0/h;->c:Lcom/bumptech/glide/d;

    iget-object p1, p1, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object p1, p1, Lcom/bumptech/glide/f;->d:Lb1/f;

    invoke-interface {p5}, Lm0/w;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb1/f;->a(Ljava/lang/Class;)Lj0/f;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object p1, p2, Lm0/i;->o:Lj0/e;

    invoke-interface {v0, p1}, Lj0/f;->b(Lj0/e;)Lcom/bumptech/glide/load/c;

    move-result-object p1

    goto :goto_8e

    :cond_82
    new-instance p0, Lcom/bumptech/glide/f$d;

    invoke-interface {p5}, Lm0/w;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f$d;-><init>(Ljava/lang/Class;)V

    throw p0

    :cond_8c
    sget-object p1, Lcom/bumptech/glide/load/c;->c:Lcom/bumptech/glide/load/c;

    :goto_8e
    move-object v9, v0

    iget-object v0, p2, Lm0/i;->a:Lm0/h;

    iget-object v3, p2, Lm0/i;->x:Lj0/c;

    invoke-virtual {v0}, Lm0/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_9c
    if-ge v5, v4, :cond_b1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq0/n$a;

    iget-object v8, v8, Lq0/n$a;->a:Lj0/c;

    invoke-interface {v8, v3}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ae

    move v1, v2

    goto :goto_b1

    :cond_ae
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    :cond_b1
    :goto_b1
    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p2, Lm0/i;->n:Lm0/k;

    invoke-virtual {v1, v0, p3, p1}, Lm0/k;->d(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z

    move-result p3

    if-eqz p3, :cond_117

    if-eqz v9, :cond_109

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_f3

    if-ne p3, v2, :cond_dc

    new-instance p1, Lm0/y;

    iget-object p3, p2, Lm0/i;->a:Lm0/h;

    iget-object p3, p3, Lm0/h;->c:Lcom/bumptech/glide/d;

    iget-object v1, p3, Lcom/bumptech/glide/d;->a:Ln0/b;

    iget-object v2, p2, Lm0/i;->x:Lj0/c;

    iget-object v3, p2, Lm0/i;->i:Lj0/c;

    iget v4, p2, Lm0/i;->l:I

    iget v5, p2, Lm0/i;->m:I

    iget-object v8, p2, Lm0/i;->o:Lj0/e;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lm0/y;-><init>(Ln0/b;Lj0/c;Lj0/c;IILj0/g;Ljava/lang/Class;Lj0/e;)V

    goto :goto_fc

    :cond_dc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown strategy: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f3
    new-instance p1, Lm0/e;

    iget-object p3, p2, Lm0/i;->x:Lj0/c;

    iget-object v0, p2, Lm0/i;->i:Lj0/c;

    invoke-direct {p1, p3, v0}, Lm0/e;-><init>(Lj0/c;Lj0/c;)V

    :goto_fc
    invoke-static {p5}, Lm0/v;->d(Lm0/w;)Lm0/v;

    move-result-object p5

    iget-object p2, p2, Lm0/i;->f:Lm0/i$c;

    iput-object p1, p2, Lm0/i$c;->a:Lj0/c;

    iput-object v9, p2, Lm0/i$c;->b:Lj0/f;

    iput-object p5, p2, Lm0/i$c;->c:Lm0/v;

    goto :goto_117

    :cond_109
    new-instance p0, Lcom/bumptech/glide/f$d;

    invoke-interface {p5}, Lm0/w;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f$d;-><init>(Ljava/lang/Class;)V

    throw p0

    :cond_117
    :goto_117
    iget-object p0, p0, Lm0/j;->c:Ly0/e;

    invoke-interface {p0, p5, p4}, Ly0/e;->a(Lm0/w;Lj0/e;)Lm0/w;

    move-result-object p0

    return-object p0

    :catchall_11e
    move-exception p1

    iget-object p0, p0, Lm0/j;->d:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method

.method public final b(Lk0/e;IILj0/e;Ljava/util/List;)Lm0/w;
    .registers 14
    .param p4  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/e<",
            "TDataType;>;II",
            "Lj0/e;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lm0/w<",
            "TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm0/r;
        }
    .end annotation

    iget-object v0, p0, Lm0/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_4c

    iget-object v3, p0, Lm0/j;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/f;

    :try_start_12
    invoke-interface {p1}, Lk0/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p4}, Lcom/bumptech/glide/load/f;->a(Ljava/lang/Object;Lj0/e;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p1}, Lk0/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lcom/bumptech/glide/load/f;->b(Ljava/lang/Object;IILj0/e;)Lm0/w;

    move-result-object v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_24} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_24} :catch_25

    goto :goto_46

    :catch_25
    move-exception v4

    const/4 v5, 0x2

    const-string v6, "DecodePath"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_43

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode data for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    if-eqz v1, :cond_49

    goto :goto_4c

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_4f

    return-object v1

    :cond_4f
    new-instance p1, Lm0/r;

    iget-object p0, p0, Lm0/j;->e:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p0, p2}, Lm0/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DecodePath{ dataClass="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm0/j;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0/j;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm0/j;->c:Ly0/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
