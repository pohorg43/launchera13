.class public interface abstract Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragLeashHandler"
.end annotation


# virtual methods
.method public cancleCurrentAnimation()V
    .registers 1

    return-void
.end method

.method public finishAnimation()V
    .registers 1

    return-void
.end method

.method public getMotionTopActivityName()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMotionTopAppPackageName()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public moveDragLeash(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 2

    return-void
.end method

.method public startAnimation(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFII)V
    .registers 14

    return-void
.end method

.method public vibrateWidthSpecilEffect(I)V
    .registers 2

    return-void
.end method
