.class public final Ls3/j;
.super Ls3/v;
.source ""

# interfaces
.implements Ls3/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/v;",
        "Ls3/t<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0}, Ls3/v;-><init>()V

    iput-object p1, p0, Ls3/j;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lv3/l$b;)Lv3/y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lv3/l$b;",
            ")",
            "Lv3/y;"
        }
    .end annotation

    sget-object p0, Lq3/m;->a:Lv3/y;

    return-object p0
.end method

.method public c()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public f(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public s()V
    .registers 1

    return-void
.end method

.method public t()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Closed@"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lq3/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ls3/j;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Ls3/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/j<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public v(Lv3/l$b;)Lv3/y;
    .registers 2

    sget-object p0, Lq3/m;->a:Lv3/y;

    return-object p0
.end method

.method public final x()Ljava/lang/Throwable;
    .registers 2

    iget-object p0, p0, Ls3/j;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_b

    new-instance p0, Ls3/k;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Ls3/k;-><init>(Ljava/lang/String;)V

    :cond_b
    return-object p0
.end method

.method public final y()Ljava/lang/Throwable;
    .registers 2

    iget-object p0, p0, Ls3/j;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_b

    new-instance p0, Ls3/l;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Ls3/l;-><init>(Ljava/lang/String;)V

    :cond_b
    return-object p0
.end method
