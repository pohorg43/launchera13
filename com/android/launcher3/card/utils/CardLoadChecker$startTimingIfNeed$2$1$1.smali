.class final Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.utils.CardLoadChecker$startTimingIfNeed$2$1$1"
    f = "CardLoadChecker.kt"
    l = {
        0xce
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/utils/CardLoadChecker;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 3
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

    new-instance p1, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/utils/CardLoadChecker;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;->label:I

    new-instance v1, Lq3/l;

    invoke-static {p0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lq3/l;-><init>(Lb3/d;I)V

    invoke-virtual {v1}, Lq3/l;->u()V

    invoke-static {p1, v1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$setCancellableCtt$p(Lcom/android/launcher3/card/utils/CardLoadChecker;Lq3/k;)V

    invoke-virtual {v1}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3c

    const-string v1, "frame"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3c
    if-ne p1, v0, :cond_3f

    return-object v0

    :cond_3f
    :goto_3f
    return-object p1
.end method
