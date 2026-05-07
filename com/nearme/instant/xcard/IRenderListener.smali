.class public interface abstract Lcom/nearme/instant/xcard/IRenderListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/instant/xcard/IRenderListener$ErrorCode;
    }
.end annotation


# virtual methods
.method public abstract onRenderException(ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onRenderFailed(ILjava/lang/String;)Z
.end method

.method public abstract onRenderProgress()Z
.end method

.method public abstract onRenderSuccess()V
.end method

.method public abstract onRouter(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
