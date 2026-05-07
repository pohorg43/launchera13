.class public final Lu3/d;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
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

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lt3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lu3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/e;Lu3/f;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "Ljava/lang/Object;",
            ">;",
            "Lu3/f<",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-",
            "Lu3/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/d;->c:Lt3/e;

    iput-object p2, p0, Lu3/d;->d:Lu3/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

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

    new-instance v0, Lu3/d;

    iget-object v1, p0, Lu3/d;->c:Lt3/e;

    iget-object p0, p0, Lu3/d;->d:Lu3/f;

    invoke-direct {v0, v1, p0, p2}, Lu3/d;-><init>(Lt3/e;Lu3/f;Lb3/d;)V

    iput-object p1, v0, Lu3/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    new-instance v0, Lu3/d;

    iget-object v1, p0, Lu3/d;->c:Lt3/e;

    iget-object p0, p0, Lu3/d;->d:Lu3/f;

    invoke-direct {v0, v1, p0, p2}, Lu3/d;-><init>(Lt3/e;Lu3/f;Lb3/d;)V

    iput-object p1, v0, Lu3/d;->b:Ljava/lang/Object;

    sget-object p0, Ly2/p;->a:Ly2/p;

    invoke-virtual {v0, p0}, Lu3/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lu3/d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_50

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lu3/d;->b:Ljava/lang/Object;

    check-cast p1, Lq3/f0;

    iget-object v1, p0, Lu3/d;->c:Lt3/e;

    iget-object v3, p0, Lu3/d;->d:Lu3/f;

    iget-object v4, v3, Lu3/f;->a:Lb3/f;

    iget v5, v3, Lu3/f;->b:I

    const/4 v6, -0x3

    if-ne v5, v6, :cond_28

    const/4 v5, -0x2

    :cond_28
    iget-object v6, v3, Lu3/f;->c:Ls3/e;

    const/4 v7, 0x3

    new-instance v8, Lu3/e;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v9}, Lu3/e;-><init>(Lu3/f;Lb3/d;)V

    const/4 v3, 0x4

    invoke-static {v5, v6, v9, v3}, Ll0/b;->a(ILs3/e;Lkotlin/jvm/functions/Function1;I)Ls3/f;

    move-result-object v3

    invoke-static {p1, v4}, Lq3/z;->c(Lq3/f0;Lb3/f;)Lb3/f;

    move-result-object p1

    new-instance v4, Ls3/p;

    invoke-direct {v4, p1, v3}, Ls3/p;-><init>(Lb3/f;Ls3/f;)V

    invoke-virtual {v4, v7, v4, v8}, Lq3/a;->k0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iput v2, p0, Lu3/d;->a:I

    invoke-static {v1, v4, v2, p0}, Lt3/f;->a(Lt3/e;Ls3/s;ZLb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4b

    goto :goto_4d

    :cond_4b
    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_4d
    if-ne p0, v0, :cond_50

    return-object v0

    :cond_50
    :goto_50
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
