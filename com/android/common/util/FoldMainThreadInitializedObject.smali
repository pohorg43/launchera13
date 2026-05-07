.class public Lcom/android/common/util/FoldMainThreadInitializedObject;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mProvider:Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/util/FoldMainThreadInitializedObject;->mValues:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/common/util/FoldMainThreadInitializedObject;->mProvider:Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/util/FoldMainThreadInitializedObject;->lambda$forOverride$2(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/util/FoldMainThreadInitializedObject;->lambda$get$1(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/util/FoldMainThreadInitializedObject;->lambda$get$0(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forOverride(Ljava/lang/Class;I)Lcom/android/common/util/FoldMainThreadInitializedObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/util/ResourceBasedOverride;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/android/common/util/FoldMainThreadInitializedObject<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/common/util/FoldMainThreadInitializedObject;

    new-instance v1, Lcom/android/common/util/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/common/util/l;-><init>(Ljava/lang/Class;II)V

    invoke-direct {v0, v1}, Lcom/android/common/util/FoldMainThreadInitializedObject;-><init>(Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;)V

    return-object v0
.end method

.method private static synthetic lambda$forOverride$2(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;
    .registers 3

    invoke-static {p0, p2, p1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$get$0(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/common/util/FoldMainThreadInitializedObject;->mProvider:Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/common/util/FoldMainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$get$1(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/common/util/FoldMainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/config/ScreenInfo;->getFoldingMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/util/FoldMainThreadInitializedObject;->mValues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_41

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_24

    new-instance v1, Lcom/android/common/util/n;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/n;-><init>(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)V

    const-string/jumbo p1, "main.thread.object"

    invoke-static {p1, v1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    :goto_22
    move-object v1, p1

    goto :goto_34

    :cond_24
    :try_start_24
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/common/util/m;

    invoke-direct {v2, p0, p1}, Lcom/android/common/util/m;-><init>(Lcom/android/common/util/FoldMainThreadInitializedObject;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_33} :catch_3a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_33} :catch_3a

    goto :goto_22

    :goto_34
    iget-object p0, p0, Lcom/android/common/util/FoldMainThreadInitializedObject;->mValues:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_41

    :catch_3a
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_41
    :goto_41
    return-object v1
.end method

.method public getNoCreate()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/common/util/FoldMainThreadInitializedObject;->mValues:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/common/config/ScreenInfo;->getFoldingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public initializeForTesting(Ljava/lang/Object;)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/config/ScreenInfo;->getFoldingMode()I

    move-result v0

    iget-object p0, p0, Lcom/android/common/util/FoldMainThreadInitializedObject;->mValues:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
