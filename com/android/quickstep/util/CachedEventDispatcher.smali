.class public Lcom/android/quickstep/util/CachedEventDispatcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_28

    :cond_8
    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_12

    invoke-static {p1, v0}, Lcom/android/systemui/shared/system/InputChannelCompat;->mergeMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_12
    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    :cond_1d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mLastEvent:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_28
    return-void
.end method

.method public hasConsumer()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public setConsumer(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    iget-object p1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    move p1, v0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_10
    if-ge v0, p1, :cond_25

    iget-object v1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mLastEvent:Landroid/view/MotionEvent;

    return-void
.end method
