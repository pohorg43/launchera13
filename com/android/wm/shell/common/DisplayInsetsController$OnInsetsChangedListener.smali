.class public interface abstract Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DisplayInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInsetsChangedListener"
.end annotation


# virtual methods
.method public hideInsets(IZ)V
    .registers 3

    return-void
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .registers 2

    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 3

    return-void
.end method

.method public showInsets(IZ)V
    .registers 3

    return-void
.end method

.method public topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V
    .registers 3

    return-void
.end method
