.class public final Lx3/d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx3/c;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx3/c;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lx3/d;->a:Lx3/c;

    iput-object p2, p0, Lx3/d;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lx3/d;->a:Lx3/c;

    iget-object p0, p0, Lx3/d;->b:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lx3/c;->b(Ljava/lang/Object;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
