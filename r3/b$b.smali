.class public final Lr3/b$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr3/b;->c(JLq3/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Lr3/b;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lr3/b;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lr3/b$b;->a:Lr3/b;

    iput-object p2, p0, Lr3/b$b;->b:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lr3/b$b;->a:Lr3/b;

    iget-object p1, p1, Lr3/b;->a:Landroid/os/Handler;

    iget-object p0, p0, Lr3/b$b;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
