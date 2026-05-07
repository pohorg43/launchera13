.class public abstract Lb3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/f$a;


# instance fields
.field private final key:Lb3/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/f$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/f$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f$b<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/a;->key:Lb3/f$b;

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

    invoke-static {p0, p1, p2}, Lb3/f$a$a;->a(Lb3/f$a;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

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

    invoke-static {p0, p1}, Lb3/f$a$a;->b(Lb3/f$a;Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lb3/f$b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb3/f$b<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lb3/a;->key:Lb3/f$b;

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

    invoke-static {p0, p1}, Lb3/f$a$a;->c(Lb3/f$a;Lb3/f$b;)Lb3/f;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lb3/f;)Lb3/f;
    .registers 2

    invoke-static {p0, p1}, Lb3/f$a$a;->d(Lb3/f$a;Lb3/f;)Lb3/f;

    move-result-object p0

    return-object p0
.end method
