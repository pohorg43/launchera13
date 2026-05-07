.class public interface abstract Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitControlBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControlBarListener"
.end annotation


# virtual methods
.method public abstract onControlBarLayoutChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;)V
.end method

.method public abstract onTouchDown(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
.end method

.method public abstract onTouchMove(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
.end method

.method public abstract onTouchUp(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
.end method
