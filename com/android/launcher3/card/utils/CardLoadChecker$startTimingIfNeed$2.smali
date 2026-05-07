.class final Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.utils.CardLoadChecker$startTimingIfNeed$2"
    f = "CardLoadChecker.kt"
    l = {
        0x67,
        0x6d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/utils/CardLoadChecker;->startTimingIfNeed(Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

.field public final synthetic $playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/utils/CardLoadChecker;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    iput-object p2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->$playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
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

    new-instance p1, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    iget-object v1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->$playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    if-eq v1, v3, :cond_1c

    if-ne v1, v2, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_63

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :try_start_1c
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_38

    :catchall_20
    move-exception p1

    goto :goto_44

    :cond_22
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    const-wide/16 v4, 0xdac

    :try_start_29
    new-instance v1, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;

    const/4 v6, 0x0

    invoke-direct {v1, p1, v6}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2$1$1;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lb3/d;)V

    iput v3, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->label:I

    invoke-static {v4, v5, v1, p0}, Li1/k;->h(JLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_38

    return-object v0

    :cond_38
    :goto_38
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_20

    goto :goto_48

    :goto_44
    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_48
    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->$playAnim:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->this$0:Lcom/android/launcher3/card/utils/CardLoadChecker;

    iget-object v4, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_55

    goto :goto_6d

    :cond_55
    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;->label:I

    invoke-static {v3, v4, p0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->access$loadTimeout(Lcom/android/launcher3/card/utils/CardLoadChecker;Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_60

    return-object v0

    :cond_60
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_63
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v1, Ly2/p;->a:Ly2/p;

    :goto_6d
    return-object v1
.end method
