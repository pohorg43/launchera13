.class public final Lc3/c;
.super Ld3/c;
.source ""


# instance fields
.field public a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb3/d;Lb3/f;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V
    .registers 5

    iput-object p3, p0, Lc3/c;->b:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lc3/c;->c:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Ld3/c;-><init>(Lb3/d;Lb3/f;)V

    return-void
.end method


# virtual methods
.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lc3/c;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-ne v0, v2, :cond_e

    iput v1, p0, Lc3/c;->a:I

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    iput v2, p0, Lc3/c;->a:I

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lc3/c;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lc3/c;->c:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2d
    return-object p1
.end method
