.class public interface abstract Lcom/oplus/channel/server/ClientProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/ClientProxy$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract destroy(Z)V
.end method

.method public abstract getCommandList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observe(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Ly2/p;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract pullCommand()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end method

.method public abstract replaceObserve(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Ly2/p;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract request([BZLjava/lang/Object;)V
.end method

.method public abstract request([BZLjava/lang/Object;Z)V
.end method

.method public abstract requestOnce(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;JZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Ly2/p;",
            ">;JZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract runCallback(Ljava/lang/String;[B)V
.end method

.method public abstract stopObserve(Lkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Ly2/p;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unObserve(Lkotlin/jvm/functions/Function1;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Ly2/p;",
            ">;Z)V"
        }
    .end annotation
.end method
