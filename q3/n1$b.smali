.class public final Lq3/n1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private volatile synthetic _exceptionsHolder:Ljava/lang/Object;

.field private volatile synthetic _isCompleting:I

.field private volatile synthetic _rootCause:Ljava/lang/Object;

.field public final a:Lq3/s1;


# direct methods
.method public constructor <init>(Lq3/s1;ZLjava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/n1$b;->a:Lq3/s1;

    iput p2, p0, Lq3/n1$b;->_isCompleting:I

    iput-object p3, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    iget-object p0, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_9

    iput-object p1, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    return-void

    :cond_9
    if-ne p1, v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    if-nez v0, :cond_13

    iput-object p1, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    goto :goto_30

    :cond_13
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_27

    if-ne p1, v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Lq3/n1$b;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    goto :goto_30

    :cond_27
    instance-of p0, v0, Ljava/util/ArrayList;

    if-eqz p0, :cond_31

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_30
    return-void

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State is "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public final d()Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public e()Lq3/s1;
    .registers 1

    iget-object p0, p0, Lq3/n1$b;->a:Lq3/s1;

    return-object p0
.end method

.method public final f()Z
    .registers 1

    iget-object p0, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final g()Z
    .registers 1

    iget p0, p0, Lq3/n1$b;->_isCompleting:I

    return p0
.end method

.method public final h()Z
    .registers 2

    iget-object p0, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    sget-object v0, Lq3/o1;->e:Lv3/y;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final i(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lq3/n1$b;->c()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1c

    :cond_9
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lq3/n1$b;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1c

    :cond_16
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    check-cast v0, Ljava/util/ArrayList;

    :goto_1c
    iget-object v1, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    if-nez v1, :cond_23

    goto :goto_27

    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_27
    if-eqz p1, :cond_32

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    sget-object p1, Lq3/o1;->e:Lv3/y;

    iput-object p1, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    return-object v0

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State is "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Z)V
    .registers 2

    iput p1, p0, Lq3/n1$b;->_isCompleting:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Finishing[cancelling="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lq3/n1$b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq3/n1$b;->_isCompleting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/n1$b;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/n1$b;->_exceptionsHolder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lq3/n1$b;->a:Lq3/s1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
