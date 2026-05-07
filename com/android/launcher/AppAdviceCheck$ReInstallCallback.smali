.class interface abstract Lcom/android/launcher/AppAdviceCheck$ReInstallCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/AppAdviceCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReInstallCallback"
.end annotation


# virtual methods
.method public abstract onExceptionalCase(IILjava/lang/String;)V
.end method

.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
.end method
