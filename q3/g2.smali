.class public final Lq3/g2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb3/f$a;
.implements Lb3/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb3/f$a;",
        "Lb3/f$b<",
        "Lq3/g2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lq3/g2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq3/g2;

    invoke-direct {v0}, Lq3/g2;-><init>()V

    sput-object v0, Lq3/g2;->a:Lq3/g2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
