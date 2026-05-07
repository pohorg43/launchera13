.class public final Lv3/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _state:J

.field public final a:I

.field public final b:Z

.field public final c:I

.field public synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lv3/n;

    new-instance v1, Lv3/y;

    const-string v2, "REMOVE_FROZEN"

    invoke-direct {v1, v2}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v1, Lv3/n;->g:Lv3/y;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lv3/n;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv3/n;->a:I

    iput-boolean p2, p0, Lv3/n;->b:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lv3/n;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/n;->_next:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv3/n;->_state:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 p0, 0x0

    const/4 v0, 0x1

    const v1, 0x3fffffff  # 1.9999999f

    if-gt p2, v1, :cond_22

    move v1, v0

    goto :goto_23

    :cond_22
    move v1, p0

    :goto_23
    const-string v2, "Check failed."

    if-eqz v1, :cond_38

    and-int/2addr p1, p2

    if-nez p1, :cond_2b

    move p0, v0

    :cond_2b
    if-eqz p0, :cond_2e

    return-void

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    :cond_0
    iget-wide v2, p0, Lv3/n;->_state:J

    const-wide/high16 v0, 0x3000000000000000L  # 1.727233711018889E-77

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-wide/high16 p0, 0x2000000000000000L

    and-long/2addr p0, v2

    cmp-long p0, p0, v6

    if-eqz p0, :cond_14

    const/4 v1, 0x2

    :cond_14
    return v1

    :cond_15
    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    const/4 v8, 0x0

    shr-long/2addr v4, v8

    long-to-int v0, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v9, 0x1e

    shr-long/2addr v4, v9

    long-to-int v10, v4

    iget v11, p0, Lv3/n;->c:I

    add-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v11

    and-int v5, v0, v11

    if-ne v4, v5, :cond_30

    return v1

    :cond_30
    iget-boolean v4, p0, Lv3/n;->b:Z

    const v5, 0x3fffffff  # 1.9999999f

    if-nez v4, :cond_4f

    iget-object v4, p0, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v12, v10, v11

    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4f

    iget v2, p0, Lv3/n;->a:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_4e

    sub-int/2addr v10, v0

    and-int v0, v10, v5

    shr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    :cond_4e
    return v1

    :cond_4f
    add-int/lit8 v0, v10, 0x1

    and-int/2addr v0, v5

    sget-object v1, Lv3/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, -0xfffffffc0000001L  # -3.1050369248997324E231

    and-long/2addr v4, v2

    int-to-long v12, v0

    shl-long/2addr v12, v9

    or-long/2addr v4, v12

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v1, v10, v11

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_6c
    iget-wide v0, p0, Lv3/n;->_state:J

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-nez v0, :cond_76

    goto :goto_99

    :cond_76
    invoke-virtual {p0}, Lv3/n;->e()Lv3/n;

    move-result-object p0

    iget-object v0, p0, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lv3/n;->c:I

    and-int/2addr v1, v10

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/n$a;

    if-eqz v1, :cond_96

    check-cast v0, Lv3/n$a;

    iget v0, v0, Lv3/n$a;->a:I

    if-ne v0, v10, :cond_96

    iget-object v0, p0, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lv3/n;->c:I

    and-int/2addr v1, v10

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_97

    :cond_96
    const/4 p0, 0x0

    :goto_97
    if-nez p0, :cond_6c

    :goto_99
    return v8
.end method

.method public final b()Z
    .registers 10

    :cond_0
    iget-wide v2, p0, Lv3/n;->_state:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v8, 0x1

    if-eqz v4, :cond_e

    return v8

    :cond_e
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    or-long v4, v2, v0

    sget-object v0, Lv3/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v8
.end method

.method public final c()I
    .registers 5

    iget-wide v0, p0, Lv3/n;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 p0, 0x0

    shr-long/2addr v2, p0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p0

    const p0, 0x3fffffff  # 1.9999999f

    and-int/2addr p0, v0

    return p0
.end method

.method public final d()Z
    .registers 6

    iget-wide v0, p0, Lv3/n;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 p0, 0x0

    shr-long/2addr v2, p0

    long-to-int v2, v2

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v0, v3

    const/16 v3, 0x1e

    shr-long/2addr v0, v3

    long-to-int v0, v0

    if-ne v2, v0, :cond_16

    const/4 p0, 0x1

    :cond_16
    return p0
.end method

.method public final e()Lv3/n;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/n<",
            "TE;>;"
        }
    .end annotation

    :cond_0
    iget-wide v2, p0, Lv3/n;->_state:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    goto :goto_1a

    :cond_d
    or-long v6, v2, v0

    sget-object v0, Lv3/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v2, v6

    :goto_1a
    iget-object v0, p0, Lv3/n;->_next:Ljava/lang/Object;

    check-cast v0, Lv3/n;

    if-eqz v0, :cond_21

    return-object v0

    :cond_21
    sget-object v0, Lv3/n;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    new-instance v4, Lv3/n;

    iget v5, p0, Lv3/n;->a:I

    mul-int/lit8 v5, v5, 0x2

    iget-boolean v6, p0, Lv3/n;->b:Z

    invoke-direct {v4, v5, v6}, Lv3/n;-><init>(IZ)V

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v2

    const/4 v7, 0x0

    shr-long/2addr v5, v7

    long-to-int v5, v5

    const-wide v6, 0xfffffffc0000000L

    and-long/2addr v6, v2

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v6, v6

    :goto_40
    iget v7, p0, Lv3/n;->c:I

    and-int v8, v5, v7

    and-int/2addr v7, v6

    if-eq v8, v7, :cond_5f

    iget-object v7, p0, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_54

    new-instance v7, Lv3/n$a;

    invoke-direct {v7, v5}, Lv3/n$a;-><init>(I)V

    :cond_54
    iget-object v8, v4, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v9, v4, Lv3/n;->c:I

    and-int/2addr v9, v5

    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_5f
    const-wide v5, -0x1000000000000001L  # -3.1050361846014175E231

    and-long/2addr v5, v2

    iput-wide v5, v4, Lv3/n;->_state:J

    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public final f()Ljava/lang/Object;
    .registers 22

    move-object/from16 v6, p0

    :cond_2
    :goto_2
    iget-wide v2, v6, Lv3/n;->_state:J

    const-wide/high16 v7, 0x1000000000000000L

    and-long v0, v2, v7

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_11

    sget-object v0, Lv3/n;->g:Lv3/y;

    return-object v0

    :cond_11
    const-wide/32 v11, 0x3fffffff

    and-long v0, v2, v11

    const/4 v13, 0x0

    shr-long/2addr v0, v13

    long-to-int v14, v0

    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v0, v0

    iget v1, v6, Lv3/n;->c:I

    and-int/2addr v0, v1

    and-int/2addr v1, v14

    const/4 v15, 0x0

    if-ne v0, v1, :cond_2b

    return-object v15

    :cond_2b
    iget-object v0, v6, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_38

    iget-boolean v0, v6, Lv3/n;->b:Z

    if-eqz v0, :cond_2

    return-object v15

    :cond_38
    instance-of v0, v4, Lv3/n$a;

    if-eqz v0, :cond_3d

    return-object v15

    :cond_3d
    add-int/lit8 v0, v14, 0x1

    const v1, 0x3fffffff  # 1.9999999f

    and-int/2addr v0, v1

    sget-object v1, Lv3/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v16, -0x40000000

    and-long v18, v2, v16

    int-to-long v9, v0

    shl-long/2addr v9, v13

    or-long v18, v18, v9

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v20, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, v6, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v6, Lv3/n;->c:I

    and-int/2addr v1, v14

    invoke-virtual {v0, v1, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v20

    :cond_64
    iget-boolean v0, v6, Lv3/n;->b:Z

    if-nez v0, :cond_69

    goto :goto_2

    :cond_69
    move-object v0, v6

    :cond_6a
    iget-wide v3, v0, Lv3/n;->_state:J

    and-long v1, v3, v11

    shr-long/2addr v1, v13

    long-to-int v14, v1

    and-long v1, v3, v7

    const-wide/16 v18, 0x0

    cmp-long v1, v1, v18

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Lv3/n;->e()Lv3/n;

    move-result-object v0

    goto :goto_92

    :cond_7d
    sget-object v1, Lv3/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    and-long v5, v3, v16

    or-long/2addr v5, v9

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, v0, Lv3/n;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v0, v0, Lv3/n;->c:I

    and-int/2addr v0, v14

    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, v15

    :goto_92
    if-nez v0, :cond_6a

    return-object v20
.end method
