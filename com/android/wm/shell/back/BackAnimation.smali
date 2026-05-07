.class public interface abstract Lcom/android/wm/shell/back/BackAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation


# virtual methods
.method public createExternalInterface()Lcom/android/wm/shell/back/IBackAnimation;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onBackMotion(FFII)V
.end method

.method public abstract setSwipeThresholds(FF)V
.end method

.method public abstract setTriggerBack(Z)V
.end method
