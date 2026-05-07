.class public interface abstract Lorg/hapjs/card/api/Card;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/InstantCard;


# virtual methods
.method public abstract changeVisibilityManually(Z)V
.end method

.method public abstract destroy()V
.end method

.method public abstract fold(Z)V
.end method

.method public abstract getCardState()I
.end method

.method public abstract getCustomConfig(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isRefreshable()Z
.end method

.method public abstract load()V
.end method

.method public abstract load(Ljava/lang/String;)V
.end method

.method public abstract load(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHide()V
.end method

.method public abstract onShow()V
.end method

.method public abstract sendMessage(ILjava/lang/String;)V
.end method

.method public abstract setAutoDestroy(Z)V
.end method

.method public abstract setLifecycleCallback(Lorg/hapjs/card/api/CardLifecycleCallback;)V
.end method

.method public abstract setMessageCallback(Lorg/hapjs/card/api/CardMessageCallback;)V
.end method

.method public abstract setPackageListener(Lorg/hapjs/card/api/PackageListener;)V
.end method

.method public abstract setRefreshable(Z)V
.end method

.method public abstract setRenderListener(Lcom/nearme/instant/xcard/IRenderListener;)V
.end method

.method public abstract setVisible(Z)V
.end method
