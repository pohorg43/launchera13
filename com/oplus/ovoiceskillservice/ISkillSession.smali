.class public interface abstract Lcom/oplus/ovoiceskillservice/ISkillSession;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract completeAction()Z
.end method

.method public abstract completeAction(ILcom/oplus/ovoicecommon/bean/ISkillCard;)Z
.end method

.method public abstract finish()V
.end method

.method public abstract getActionID()Ljava/lang/String;
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
