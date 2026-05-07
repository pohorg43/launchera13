.class final Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.CardPreloadResourceLoader$loadAsync$1$3$1"
    f = "CardPreloadResourceLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic $it:Ljava/lang/String;

.field public final synthetic $nameCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public label:I


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/lang/String;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->$nameCallback:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->$it:Ljava/lang/String;

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

    new-instance p1, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;

    iget-object v0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->$nameCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->$it:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->label:I

    if-nez v0, :cond_15

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->$nameCallback:Ljava/util/function/Consumer;

    if-nez p1, :cond_d

    const/4 p0, 0x0

    goto :goto_14

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;->$it:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_14
    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
