.class public interface abstract Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDisplayConfigChangeListener"
.end annotation


# virtual methods
.method public onDisplayRotationChange(II)V
    .registers 3
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
    .end annotation

    return-void
.end method

.method public onDisplayUiModeChange(II)V
    .registers 3
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
    .end annotation

    return-void
.end method
