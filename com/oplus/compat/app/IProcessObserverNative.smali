.class public interface abstract Lcom/oplus/compat/app/IProcessObserverNative;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onForegroundActivitiesChanged(IIZ)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method

.method public abstract onForegroundServicesChanged(III)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method

.method public abstract onProcessDied(II)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end method
