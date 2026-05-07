.class public Ls3/d;
.super Ls3/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Ls3/e;

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;

.field public g:[Ljava/lang/Object;

.field public h:I

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILs3/e;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls3/e;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Ls3/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput p1, p0, Ls3/d;->d:I

    iput-object p2, p0, Ls3/d;->e:Ls3/e;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lt p1, p2, :cond_c

    goto :goto_d

    :cond_c
    move p2, p3

    :goto_d
    if-eqz p2, :cond_2d

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Ls3/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p2, p1, [Ljava/lang/Object;

    sget-object v0, Ls3/b;->a:Lv3/y;

    const-string v1, "<this>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object p2, p0, Ls3/d;->g:[Ljava/lang/Object;

    iput p3, p0, Ls3/d;->size:I

    return-void

    :cond_2d
    const-string p0, "ArrayChannel capacity must be at least 1, but "

    const-string p2, " was specified"

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Ls3/v;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ls3/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-super {p0, p1}, Ls3/c;->d(Ls3/v;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_d
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    const-string v0, "(buffer:capacity="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ls3/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls3/d;->size:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .registers 3

    iget v0, p0, Ls3/d;->size:I

    iget v1, p0, Ls3/d;->d:I

    if-ne v0, v1, :cond_e

    iget-object p0, p0, Ls3/d;->e:Ls3/e;

    sget-object v0, Ls3/e;->a:Ls3/e;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ls3/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v1, p0, Ls3/d;->size:I

    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object v2

    if-nez v2, :cond_67

    iget v2, p0, Ls3/d;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_18

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ls3/d;->size:I

    goto :goto_2e

    :cond_18
    iget-object v2, p0, Ls3/d;->e:Ls3/e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_30

    if-eq v2, v3, :cond_2e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    sget-object v2, Ls3/b;->b:Lv3/y;

    goto :goto_32

    :cond_28
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_2e
    :goto_2e
    move-object v2, v4

    goto :goto_32

    :cond_30
    sget-object v2, Ls3/b;->c:Lv3/y;

    :goto_32
    if-nez v2, :cond_63

    if-nez v1, :cond_5a

    :cond_36
    invoke-virtual {p0}, Ls3/a;->l()Ls3/t;

    move-result-object v2

    if-nez v2, :cond_3d

    goto :goto_5a

    :cond_3d
    instance-of v3, v2, Ls3/j;

    if-eqz v3, :cond_47

    iput v1, p0, Ls3/d;->size:I
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_6b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_47
    :try_start_47
    invoke-interface {v2, p1, v4}, Ls3/t;->b(Ljava/lang/Object;Lv3/l$b;)Lv3/y;

    move-result-object v3

    if-eqz v3, :cond_36

    iput v1, p0, Ls3/d;->size:I
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_6b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v2, p1}, Ls3/t;->f(Ljava/lang/Object;)V

    invoke-interface {v2}, Ls3/t;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-virtual {p0, v1, p1}, Ls3/d;->w(ILjava/lang/Object;)V

    sget-object p0, Ls3/b;->b:Lv3/y;
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_6b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_63
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_67
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_6b
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public o(Ls3/r;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/r<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ls3/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-super {p0, p1}, Ls3/a;->o(Ls3/r;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :catchall_d
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final p()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Z
    .registers 1

    iget p0, p0, Ls3/d;->size:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public r()Z
    .registers 2

    iget-object v0, p0, Ls3/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-super {p0}, Ls3/a;->r()Z

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :catchall_d
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public s(Z)V
    .registers 11

    iget-object v0, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Ls3/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget v2, p0, Ls3/d;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_c
    if-ge v5, v2, :cond_2f

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Ls3/d;->g:[Ljava/lang/Object;

    iget v7, p0, Ls3/d;->h:I

    aget-object v6, v6, v7

    if-eqz v0, :cond_20

    sget-object v7, Ls3/b;->a:Lv3/y;

    if-eq v6, v7, :cond_20

    invoke-static {v0, v6, v4}, Lv3/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lv3/e0;)Lv3/e0;

    move-result-object v4

    :cond_20
    iget-object v6, p0, Ls3/d;->g:[Ljava/lang/Object;

    iget v7, p0, Ls3/d;->h:I

    sget-object v8, Ls3/b;->a:Lv3/y;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    array-length v6, v6

    rem-int/2addr v7, v6

    iput v7, p0, Ls3/d;->h:I

    goto :goto_c

    :cond_2f
    iput v3, p0, Ls3/d;->size:I
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_3b

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Ls3/a;->s(Z)V

    if-nez v4, :cond_3a

    return-void

    :cond_3a
    throw v4

    :catchall_3b
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public u()Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Ls3/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v1, p0, Ls3/d;->size:I

    if-nez v1, :cond_15

    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object p0

    if-nez p0, :cond_11

    sget-object p0, Ls3/b;->d:Lv3/y;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_6d

    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_15
    :try_start_15
    iget-object v2, p0, Ls3/d;->g:[Ljava/lang/Object;

    iget v3, p0, Ls3/d;->h:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ls3/d;->size:I

    sget-object v2, Ls3/b;->d:Lv3/y;

    iget v3, p0, Ls3/d;->d:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_45

    move-object v3, v5

    :goto_2b
    invoke-virtual {p0}, Ls3/c;->m()Ls3/v;

    move-result-object v8

    if-nez v8, :cond_33

    move-object v5, v3

    goto :goto_45

    :cond_33
    invoke-virtual {v8, v5}, Ls3/v;->v(Lv3/l$b;)Lv3/y;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual {v8}, Ls3/v;->t()Ljava/lang/Object;

    move-result-object v2

    move v7, v6

    move-object v5, v8

    goto :goto_45

    :cond_40
    invoke-virtual {v8}, Ls3/v;->w()V

    move-object v3, v8

    goto :goto_2b

    :cond_45
    :goto_45
    sget-object v3, Ls3/b;->d:Lv3/y;

    if-eq v2, v3, :cond_58

    instance-of v3, v2, Ls3/j;

    if-nez v3, :cond_58

    iput v1, p0, Ls3/d;->size:I

    iget-object v3, p0, Ls3/d;->g:[Ljava/lang/Object;

    iget v8, p0, Ls3/d;->h:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    :cond_58
    iget v1, p0, Ls3/d;->h:I

    add-int/2addr v1, v6

    iget-object v2, p0, Ls3/d;->g:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Ls3/d;->h:I
    :try_end_61
    .catchall {:try_start_15 .. :try_end_61} :catchall_6d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ls3/v;->s()V

    :cond_6c
    return-object v4

    :catchall_6d
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final w(ILjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Ls3/d;->d:I

    if-ge p1, v0, :cond_3d

    iget-object v1, p0, Ls3/d;->g:[Ljava/lang/Object;

    array-length v2, v1

    if-lt p1, v2, :cond_33

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, p1, :cond_25

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Ls3/d;->g:[Ljava/lang/Object;

    iget v6, p0, Ls3/d;->h:I

    add-int/2addr v6, v3

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_14

    :cond_25
    sget-object v3, Ls3/b;->a:Lv3/y;

    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object v1, p0, Ls3/d;->g:[Ljava/lang/Object;

    iput v2, p0, Ls3/d;->h:I

    :cond_33
    iget-object v0, p0, Ls3/d;->g:[Ljava/lang/Object;

    iget p0, p0, Ls3/d;->h:I

    add-int/2addr p0, p1

    array-length p1, v0

    rem-int/2addr p0, p1

    aput-object p2, v0, p0

    goto :goto_52

    :cond_3d
    iget-object v0, p0, Ls3/d;->g:[Ljava/lang/Object;

    iget v1, p0, Ls3/d;->h:I

    array-length v2, v0

    rem-int v2, v1, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/2addr p1, v1

    array-length v2, v0

    rem-int/2addr p1, v2

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Ls3/d;->h:I

    :goto_52
    return-void
.end method
