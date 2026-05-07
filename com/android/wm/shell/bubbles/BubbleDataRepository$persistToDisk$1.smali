.class final Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.wm.shell.bubbles.BubbleDataRepository$persistToDisk$1"
    f = "BubbleDataRepository.kt"
    l = {
        0x7f,
        0x81
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $prev:Lq3/i1;

.field public label:I

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;


# direct methods
.method public constructor <init>(Lq3/i1;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/i1;",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository;",
            "Lb3/d<",
            "-",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lq3/i1;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lq3/i1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;-><init>(Lq3/i1;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v4, :cond_1a

    if-ne v1, v3, :cond_12

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_d4

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_37

    :cond_1e
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lq3/i1;

    if-nez p1, :cond_26

    goto :goto_37

    :cond_26
    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-static {p1, v2, v4, v2}, Lq3/i1$a;->a(Lq3/i1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-interface {p1, p0}, Lq3/i1;->h(Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    goto :goto_34

    :cond_32
    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_34
    if-ne p1, v0, :cond_37

    return-object v0

    :cond_37
    :goto_37
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-interface {p0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p1

    invoke-static {p1}, Lq3/g;->d(Lb3/f;)V

    invoke-static {p0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v1

    instance-of v3, v1, Lv3/f;

    if-eqz v3, :cond_4b

    check-cast v1, Lv3/f;

    goto :goto_4c

    :cond_4b
    move-object v1, v2

    :goto_4c
    if-nez v1, :cond_52

    sget-object p1, Ly2/p;->a:Ly2/p;

    goto/16 :goto_c5

    :cond_52
    iget-object v3, v1, Lv3/f;->d:Lq3/b0;

    invoke-virtual {v3, p1}, Lq3/b0;->isDispatchNeeded(Lb3/f;)Z

    move-result v3

    if-eqz v3, :cond_66

    sget-object v2, Ly2/p;->a:Ly2/p;

    iput-object v2, v1, Lv3/f;->f:Ljava/lang/Object;

    iput v4, v1, Lq3/p0;->c:I

    iget-object v2, v1, Lv3/f;->d:Lq3/b0;

    invoke-virtual {v2, p1, v1}, Lq3/b0;->dispatchYield(Lb3/f;Ljava/lang/Runnable;)V

    goto :goto_c4

    :cond_66
    new-instance v3, Lq3/h2;

    invoke-direct {v3}, Lq3/h2;-><init>()V

    invoke-interface {p1, v3}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p1

    sget-object v5, Ly2/p;->a:Ly2/p;

    iput-object v5, v1, Lv3/f;->f:Ljava/lang/Object;

    iput v4, v1, Lq3/p0;->c:I

    iget-object v6, v1, Lv3/f;->d:Lq3/b0;

    invoke-virtual {v6, p1, v1}, Lq3/b0;->dispatchYield(Lb3/f;Ljava/lang/Runnable;)V

    iget-boolean p1, v3, Lq3/h2;->a:Z

    if-eqz p1, :cond_c4

    sget-object p1, Lq3/b2;->a:Lq3/b2;

    invoke-static {}, Lq3/b2;->a()Lq3/v0;

    move-result-object p1

    iget-object v3, p1, Lq3/v0;->c:Lv3/a;

    const/4 v6, 0x0

    if-nez v3, :cond_8a

    goto :goto_90

    :cond_8a
    iget v7, v3, Lv3/a;->b:I

    iget v3, v3, Lv3/a;->c:I

    if-ne v7, v3, :cond_92

    :goto_90
    move v3, v4

    goto :goto_93

    :cond_92
    move v3, v6

    :goto_93
    if-eqz v3, :cond_96

    goto :goto_b8

    :cond_96
    invoke-virtual {p1}, Lq3/v0;->v()Z

    move-result v3

    if-eqz v3, :cond_a4

    iput-object v5, v1, Lv3/f;->f:Ljava/lang/Object;

    iput v4, v1, Lq3/p0;->c:I

    invoke-virtual {p1, v1}, Lq3/v0;->n(Lq3/p0;)V

    goto :goto_b9

    :cond_a4
    invoke-virtual {p1, v4}, Lq3/v0;->r(Z)V

    :try_start_a7
    invoke-virtual {v1}, Lq3/p0;->run()V

    :cond_aa
    invoke-virtual {p1}, Lq3/v0;->y()Z

    move-result v3
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_b1

    if-nez v3, :cond_aa

    goto :goto_b5

    :catchall_b1
    move-exception v3

    :try_start_b2
    invoke-virtual {v1, v3, v2}, Lq3/p0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_bf

    :goto_b5
    invoke-virtual {p1, v4}, Lq3/v0;->l(Z)V

    :goto_b8
    move v4, v6

    :goto_b9
    if-eqz v4, :cond_bc

    goto :goto_c4

    :cond_bc
    sget-object p1, Ly2/p;->a:Ly2/p;

    goto :goto_c5

    :catchall_bf
    move-exception p0

    invoke-virtual {p1, v4}, Lq3/v0;->l(Z)V

    throw p0

    :cond_c4
    :goto_c4
    move-object p1, v0

    :goto_c5
    if-ne p1, v0, :cond_cc

    const-string v1, "frame"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_cc
    if-ne p1, v0, :cond_cf

    goto :goto_d1

    :cond_cf
    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_d1
    if-ne p1, v0, :cond_d4

    return-object v0

    :cond_d4
    :goto_d4
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getPersistentRepository$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getVolatileRepository$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->getBubbles()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->persistsToDisk(Landroid/util/SparseArray;)Z

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
