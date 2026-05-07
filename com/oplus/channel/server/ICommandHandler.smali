.class public interface abstract Lcom/oplus/channel/server/ICommandHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/ICommandHandler$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract handleAddCommand(Ljava/util/List;Lcom/oplus/channel/server/data/Command;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Lcom/oplus/channel/server/data/Command;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handlePullCommand(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldFilterRequest(Ljava/util/List;Lcom/oplus/channel/server/data/Command;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Lcom/oplus/channel/server/data/Command;",
            ")Z"
        }
    .end annotation
.end method
