.class Landroidx/core/animation/AnimationHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroidx/core/animation/AnimationHandler$FrameCallbackProvider14;,
        Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;,
        Landroidx/core/animation/AnimationHandler$AnimationCallbackData;,
        Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final sAnimationCallbackData:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/core/animation/AnimationHandler$AnimationCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field public static sAnimationHandler:Landroidx/core/animation/AnimationHandler;

.field private static sTestHandler:Landroidx/core/animation/AnimationHandler;


# instance fields
.field private final mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/animation/AnimationHandler;->sAnimationCallbackData:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-direct {p1, p0}, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Landroidx/core/animation/AnimationHandler;)V

    iput-object p1, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_f

    :cond_d
    iput-object p1, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    :goto_f
    return-void
.end method

.method private cleanUpList()V
    .registers 3

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->isListDirty()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_26

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/animation/AnimationHandler;->setListDirty(Z)V

    :cond_2a
    return-void
.end method

.method private doAnimationFrame(J)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_5
    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_1c

    goto :goto_25

    :cond_1c
    invoke-direct {p0, v3, v0, v1}, Landroidx/core/animation/AnimationHandler;->isCallbackDue(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3, p1, p2}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_28
    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method private getAnimationCallbacks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/core/animation/AnimationHandler;->sAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    if-nez v0, :cond_12

    new-instance v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {v0}, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    iget-object p0, v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getAnimationCount()I
    .registers 1

    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-direct {v0}, Landroidx/core/animation/AnimationHandler;->getCallbackSize()I

    move-result v0

    return v0
.end method

.method private getCallbackSize()I
    .registers 4

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_b
    if-ltz v0, :cond_1c

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    add-int/lit8 v1, v1, 0x1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1c
    return v1
.end method

.method private getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/core/animation/AnimationHandler;->sAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    if-nez v0, :cond_12

    new-instance v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {v0}, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    iget-object p0, v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method public static getInstance()Landroidx/core/animation/AnimationHandler;
    .registers 2

    sget-object v0, Landroidx/core/animation/AnimationHandler;->sTestHandler:Landroidx/core/animation/AnimationHandler;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Landroidx/core/animation/AnimationHandler;->sAnimationHandler:Landroidx/core/animation/AnimationHandler;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/core/animation/AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/animation/AnimationHandler;-><init>(Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    sput-object v0, Landroidx/core/animation/AnimationHandler;->sAnimationHandler:Landroidx/core/animation/AnimationHandler;

    :cond_11
    sget-object v0, Landroidx/core/animation/AnimationHandler;->sAnimationHandler:Landroidx/core/animation/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .registers 8

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1e

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private isListDirty()Z
    .registers 2

    sget-object p0, Landroidx/core/animation/AnimationHandler;->sAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    if-nez v0, :cond_12

    new-instance v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {v0}, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    iget-boolean p0, v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;->mListDirty:Z

    return p0
.end method

.method private setListDirty(Z)V
    .registers 3

    sget-object p0, Landroidx/core/animation/AnimationHandler;->sAnimationCallbackData:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    if-nez v0, :cond_12

    new-instance v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;

    invoke-direct {v0}, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    iput-boolean p1, v0, Landroidx/core/animation/AnimationHandler$AnimationCallbackData;->mListDirty:Z

    return-void
.end method

.method public static setTestHandler(Landroidx/core/animation/AnimationHandler;)V
    .registers 1

    sput-object p0, Landroidx/core/animation/AnimationHandler;->sTestHandler:Landroidx/core/animation/AnimationHandler;

    return-void
.end method


# virtual methods
.method public addAnimationFrameCallback(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 3

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {v0}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_f
    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object p0, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {p0, p1}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;->onNewCallbackAdded(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public autoCancelBasedOn(Landroidx/core/animation/ObjectAnimator;)V
    .registers 4

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2f

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v1, :cond_19

    goto :goto_2c

    :cond_19
    invoke-virtual {p1, v1}, Landroidx/core/animation/ObjectAnimator;->shouldAutoCancel(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/Animator;

    invoke-virtual {v1}, Landroidx/core/animation/Animator;->cancel()V

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2f
    return-void
.end method

.method public getFrameDelay()J
    .registers 3

    iget-object p0, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {p0}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAnimationFrame(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/animation/AnimationHandler;->doAnimationFrame(J)V

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_12

    iget-object p0, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {p0}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_12
    return-void
.end method

.method public removeCallback(Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 4

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getDelayedCallbackStartTime()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1d

    invoke-direct {p0}, Landroidx/core/animation/AnimationHandler;->getAnimationCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/core/animation/AnimationHandler;->setListDirty(Z)V

    :cond_1d
    return-void
.end method

.method public setFrameDelay(J)V
    .registers 3

    iget-object p0, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    invoke-interface {p0, p1, p2}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;->setFrameDelay(J)V

    return-void
.end method
