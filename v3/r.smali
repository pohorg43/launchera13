.class public final Lv3/r;
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
.field public final synthetic a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field public final synthetic c:Lb3/f;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lb3/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Object;",
            "Lb3/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lv3/r;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lv3/r;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv3/r;->c:Lb3/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lv3/r;->a:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lv3/r;->b:Ljava/lang/Object;

    iget-object p0, p0, Lv3/r;->c:Lb3/f;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lv3/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lv3/e0;)Lv3/e0;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_13

    :cond_10
    invoke-static {p0, p1}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    :goto_13
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
