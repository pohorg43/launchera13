.class public interface abstract Lcom/android/launcher3/util/TouchController;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    return-void
.end method

.method public abstract onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z
    .registers 3

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public abstract onControllerTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onOneHandedModeStateChanged(Z)V
    .registers 2

    return-void
.end method
