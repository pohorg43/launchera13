.class public Lcom/oplus/fancyicon/data/Variables;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/Variables$StringInfo;,
        Lcom/oplus/fancyicon/data/Variables$DoubleInfo;
    }
.end annotation


# static fields
.field private static final GLOBAL:Ljava/lang/String; = "__global"

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/data/Variables$DoubleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDoubleIndex:I

.field private mNextStringIndex:I

.field private mNumLock:Ljava/lang/Object;

.field private mNumObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStrLock:Ljava/lang/Object;

.field private mStrObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStringArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/data/Variables$StringInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNextDoubleIndex:I

    iput v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNextStringIndex:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNumLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStrLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNumObjects:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStrObjects:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    return-void
.end method

.method private getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-nez p2, :cond_4

    const-string p2, "__global"

    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_14

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_24

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p4

    :cond_24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getNum(I)Ljava/lang/Double;
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_1b

    :try_start_5
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1b

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    monitor-exit v0

    return-object p0

    :cond_1b
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getNumVer(I)I
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_1b

    :try_start_5
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1b

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;

    if-eqz p0, :cond_1b

    iget p0, p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->mVersion:I

    monitor-exit v0

    return p0

    :cond_1b
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getStr(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_1b

    :try_start_5
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1b

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/Variables$StringInfo;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables$StringInfo;->mValue:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_1b
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getStrVer(I)I
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_1b

    :try_start_5
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1b

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/Variables$StringInfo;

    if-eqz p0, :cond_1b

    iget p0, p0, Lcom/oplus/fancyicon/data/Variables$StringInfo;->mVersion:I

    monitor-exit v0

    return p0

    :cond_1b
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public putNum(ID)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/data/Variables;->putNum(ILjava/lang/Double;)V

    return-void
.end method

.method public putNum(ILjava/lang/Double;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_32

    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_16

    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;

    if-eqz v1, :cond_24

    invoke-virtual {v1, p2}, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->setValue(Ljava/lang/Double;)V

    goto :goto_32

    :cond_24
    new-instance v1, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;-><init>(Ljava/lang/Double;I)V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_34

    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_30

    throw p0
.end method

.method public putStr(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_32

    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_16

    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/data/Variables$StringInfo;

    if-eqz v1, :cond_24

    invoke-virtual {v1, p2}, Lcom/oplus/fancyicon/data/Variables$StringInfo;->setValue(Ljava/lang/String;)V

    goto :goto_32

    :cond_24
    new-instance v1, Lcom/oplus/fancyicon/data/Variables$StringInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/oplus/fancyicon/data/Variables$StringInfo;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_34

    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_30

    throw p0
.end method

.method public registerNumberVariable(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mNumObjects:Ljava/util/HashMap;

    iget v2, p0, Lcom/oplus/fancyicon/data/Variables;->mNextDoubleIndex:I

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/oplus/fancyicon/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget p2, p0, Lcom/oplus/fancyicon/data/Variables;->mNextDoubleIndex:I

    if-ne p1, p2, :cond_13

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/oplus/fancyicon/data/Variables;->mNextDoubleIndex:I

    :cond_13
    monitor-exit v0

    return p1

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public registerStringVariable(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mStrObjects:Ljava/util/HashMap;

    iget v2, p0, Lcom/oplus/fancyicon/data/Variables;->mNextStringIndex:I

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/oplus/fancyicon/data/Variables;->getIndex(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget p2, p0, Lcom/oplus/fancyicon/data/Variables;->mNextStringIndex:I

    if-ne p1, p2, :cond_13

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/oplus/fancyicon/data/Variables;->mNextStringIndex:I

    :cond_13
    monitor-exit v0

    return p1

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public reset()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mNumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    const/4 v4, 0x0

    if-ge v3, v1, :cond_16

    iget-object v5, p0, Lcom/oplus/fancyicon/data/Variables;->mDoubleArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2f

    iget-object v1, p0, Lcom/oplus/fancyicon/data/Variables;->mStrLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    iget-object v0, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_20
    if-ge v2, v0, :cond_2a

    iget-object v3, p0, Lcom/oplus/fancyicon/data/Variables;->mStringArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2a
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_2c

    throw p0

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method
