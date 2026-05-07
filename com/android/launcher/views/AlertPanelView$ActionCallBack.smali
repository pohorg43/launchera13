.class public interface abstract Lcom/android/launcher/views/AlertPanelView$ActionCallBack;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/views/AlertPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionCallBack"
.end annotation


# virtual methods
.method public abstract dialogDelayCloseTime()I
.end method

.method public abstract getDialogMarginBottomHeight()I
.end method

.method public abstract getInterceptCloseAnimate()Z
.end method

.method public onDetached()V
    .registers 1

    return-void
.end method

.method public abstract onDialogOutsideClick()V
.end method

.method public abstract onNegativeButtonClick()V
.end method

.method public abstract onPositiveButtonClick()V
.end method
