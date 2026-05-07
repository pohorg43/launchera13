.class public final Lu3/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/f;


# instance fields
.field public final a:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final synthetic b:Lb3/f;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lb3/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/l;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lu3/l;->b:Lb3/f;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lb3/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lu3/l;->b:Lb3/f;

    invoke-interface {p0, p1, p2}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lb3/f$b;)Lb3/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lb3/f$a;",
            ">(",
            "Lb3/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object p0, p0, Lu3/l;->b:Lb3/f;

    invoke-interface {p0, p1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    return-object p0
.end method

.method public minusKey(Lb3/f$b;)Lb3/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f$b<",
            "*>;)",
            "Lb3/f;"
        }
    .end annotation

    iget-object p0, p0, Lu3/l;->b:Lb3/f;

    invoke-interface {p0, p1}, Lb3/f;->minusKey(Lb3/f$b;)Lb3/f;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lb3/f;)Lb3/f;
    .registers 2

    iget-object p0, p0, Lu3/l;->b:Lb3/f;

    invoke-interface {p0, p1}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    return-object p0
.end method
