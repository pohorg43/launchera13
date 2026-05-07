.class public interface abstract Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/BaseActivityInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationFactory"
.end annotation


# virtual methods
.method public abstract createActivityInterface(J)V
.end method

.method public hasRecentsEverAttachedToAppWindow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isRecentsAttachedToAppWindow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 2

    return-void
.end method

.method public setRecentsAttachedToAppWindow(ZZ)V
    .registers 3

    return-void
.end method
