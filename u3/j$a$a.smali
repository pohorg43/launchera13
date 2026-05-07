.class public final Lu3/j$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/j$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt3/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lq3/i1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lq3/f0;

.field public final synthetic c:Lu3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/j<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lt3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/e<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lq3/f0;Lu3/j;Lt3/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lq3/i1;",
            ">;",
            "Lq3/f0;",
            "Lu3/j<",
            "TT;TR;>;",
            "Lt3/e<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/j$a$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lu3/j$a$a;->b:Lq3/f0;

    iput-object p3, p0, Lu3/j$a$a;->c:Lu3/j;

    iput-object p4, p0, Lu3/j$a$a;->d:Lt3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lu3/j$a$a$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lu3/j$a$a$b;

    iget v1, v0, Lu3/j$a$a$b;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lu3/j$a$a$b;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lu3/j$a$a$b;

    invoke-direct {v0, p0, p2}, Lu3/j$a$a$b;-><init>(Lu3/j$a$a;Lb3/d;)V

    :goto_18
    iget-object p2, v0, Lu3/j$a$a$b;->d:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lu3/j$a$a$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p0, v0, Lu3/j$a$a$b;->c:Ljava/lang/Object;

    check-cast p0, Lq3/i1;

    iget-object p1, v0, Lu3/j$a$a$b;->b:Ljava/lang/Object;

    iget-object p0, v0, Lu3/j$a$a$b;->a:Ljava/lang/Object;

    check-cast p0, Lu3/j$a$a;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p2, p0, Lu3/j$a$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lq3/i1;

    if-nez p2, :cond_45

    goto :goto_5c

    :cond_45
    new-instance v2, Lu3/k;

    invoke-direct {v2}, Lu3/k;-><init>()V

    invoke-interface {p2, v2}, Lq3/i1;->b(Ljava/util/concurrent/CancellationException;)V

    iput-object p0, v0, Lu3/j$a$a$b;->a:Ljava/lang/Object;

    iput-object p1, v0, Lu3/j$a$a$b;->b:Ljava/lang/Object;

    iput-object p2, v0, Lu3/j$a$a$b;->c:Ljava/lang/Object;

    iput v3, v0, Lu3/j$a$a$b;->f:I

    invoke-interface {p2, v0}, Lq3/i1;->h(Lb3/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5c

    return-object v1

    :cond_5c
    :goto_5c
    iget-object p2, p0, Lu3/j$a$a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lu3/j$a$a;->b:Lq3/f0;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-instance v3, Lu3/j$a$a$a;

    iget-object v4, p0, Lu3/j$a$a;->c:Lu3/j;

    iget-object p0, p0, Lu3/j$a$a;->d:Lt3/e;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, p1, v5}, Lu3/j$a$a$a;-><init>(Lu3/j;Lt3/e;Ljava/lang/Object;Lb3/d;)V

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    move-result-object p0

    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
