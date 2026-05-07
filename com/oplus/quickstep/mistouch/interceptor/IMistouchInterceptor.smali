.class public interface abstract Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract destory()V
.end method

.method public abstract forceShowToast()V
.end method

.method public abstract interceptDownEvent(FF)Z
.end method

.method public abstract interceptMoveEvent()Z
.end method

.method public abstract onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
.end method

.method public abstract reset(Z)V
.end method
