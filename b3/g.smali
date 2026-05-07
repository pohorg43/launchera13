.class public final Lb3/g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lb3/f;",
        "Lb3/f$a;",
        "Lb3/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lb3/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb3/g;

    invoke-direct {v0}, Lb3/g;-><init>()V

    sput-object v0, Lb3/g;->a:Lb3/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lb3/f;

    check-cast p2, Lb3/f$a;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object p0

    invoke-interface {p1, p0}, Lb3/f;->minusKey(Lb3/f$b;)Lb3/f;

    move-result-object p0

    sget-object p1, Lb3/h;->a:Lb3/h;

    if-ne p0, p1, :cond_1b

    goto :goto_46

    :cond_1b
    sget v0, Lb3/e;->A:I

    sget-object v0, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {p0, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    check-cast v1, Lb3/e;

    if-nez v1, :cond_2e

    new-instance p1, Lb3/c;

    invoke-direct {p1, p0, p2}, Lb3/c;-><init>(Lb3/f;Lb3/f$a;)V

    :goto_2c
    move-object p2, p1

    goto :goto_46

    :cond_2e
    invoke-interface {p0, v0}, Lb3/f;->minusKey(Lb3/f$b;)Lb3/f;

    move-result-object p0

    if-ne p0, p1, :cond_3b

    new-instance p0, Lb3/c;

    invoke-direct {p0, p2, v1}, Lb3/c;-><init>(Lb3/f;Lb3/f$a;)V

    move-object p2, p0

    goto :goto_46

    :cond_3b
    new-instance p1, Lb3/c;

    new-instance v0, Lb3/c;

    invoke-direct {v0, p0, p2}, Lb3/c;-><init>(Lb3/f;Lb3/f$a;)V

    invoke-direct {p1, v0, v1}, Lb3/c;-><init>(Lb3/f;Lb3/f$a;)V

    goto :goto_2c

    :goto_46
    return-object p2
.end method
