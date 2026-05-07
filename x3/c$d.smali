.class public final Lx3/c$d;
.super Lv3/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/c<",
        "Lx3/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lx3/c$c;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx3/c$c;)V
    .registers 2

    invoke-direct {p0}, Lv3/c;-><init>()V

    iput-object p1, p0, Lx3/c$d;->b:Lx3/c$c;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lx3/c;

    if-nez p2, :cond_7

    sget-object p2, Lx3/e;->e:Lx3/a;

    goto :goto_9

    :cond_7
    iget-object p2, p0, Lx3/c$d;->b:Lx3/c$c;

    :goto_9
    sget-object v0, Lx3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lx3/c;

    iget-object p0, p0, Lx3/c$d;->b:Lx3/c$c;

    invoke-virtual {p0}, Lv3/l;->j()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eqz p0, :cond_11

    const/4 p0, 0x0

    goto :goto_13

    :cond_11
    sget-object p0, Lx3/e;->a:Lv3/y;

    :goto_13
    return-object p0
.end method
