.class public interface abstract Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipParamsChangedForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PipParamsChangedCallback"
.end annotation


# virtual methods
.method public onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onAspectRatioChanged(F)V
    .registers 2

    return-void
.end method

.method public onExpandedAspectRatioChanged(F)V
    .registers 2

    return-void
.end method

.method public onSubtitleChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
