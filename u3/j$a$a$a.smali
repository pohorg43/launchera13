.class public final Lu3/j$a$a$a;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2"
    f = "Merge.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/j$a$a;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
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
.field public a:I

.field public final synthetic b:Lu3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/j<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lt3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/j;Lt3/e;Ljava/lang/Object;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/j<",
            "TT;TR;>;",
            "Lt3/e<",
            "-TR;>;TT;",
            "Lb3/d<",
            "-",
            "Lu3/j$a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/j$a$a$a;->b:Lu3/j;

    iput-object p2, p0, Lu3/j$a$a$a;->c:Lt3/e;

    iput-object p3, p0, Lu3/j$a$a$a;->d:Ljava/lang/Object;

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

    new-instance p1, Lu3/j$a$a$a;

    iget-object v0, p0, Lu3/j$a$a$a;->b:Lu3/j;

    iget-object v1, p0, Lu3/j$a$a$a;->c:Lt3/e;

    iget-object p0, p0, Lu3/j$a$a$a;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p0, p2}, Lu3/j$a$a$a;-><init>(Lu3/j;Lt3/e;Ljava/lang/Object;Lb3/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    new-instance p1, Lu3/j$a$a$a;

    iget-object v0, p0, Lu3/j$a$a$a;->b:Lu3/j;

    iget-object v1, p0, Lu3/j$a$a$a;->c:Lt3/e;

    iget-object p0, p0, Lu3/j$a$a$a;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p0, p2}, Lu3/j$a$a$a;-><init>(Lu3/j;Lt3/e;Ljava/lang/Object;Lb3/d;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    invoke-virtual {p1, p0}, Lu3/j$a$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lu3/j$a$a$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_29

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lu3/j$a$a$a;->b:Lu3/j;

    iget-object p1, p1, Lu3/j;->e:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lu3/j$a$a$a;->c:Lt3/e;

    iget-object v3, p0, Lu3/j$a$a$a;->d:Ljava/lang/Object;

    iput v2, p0, Lu3/j$a$a$a;->a:I

    invoke-interface {p1, v1, v3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
