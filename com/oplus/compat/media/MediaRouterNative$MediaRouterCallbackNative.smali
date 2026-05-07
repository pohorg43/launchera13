.class public interface abstract Lcom/oplus/compat/media/MediaRouterNative$MediaRouterCallbackNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/media/MediaRouterNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaRouterCallbackNative"
.end annotation


# virtual methods
.method public abstract onRouteAdded(Lcom/oplus/compat/media/MediaRouterInfo;)V
.end method

.method public abstract onRouteChanged(Lcom/oplus/compat/media/MediaRouterInfo;)V
.end method

.method public abstract onRouteRemoved(Lcom/oplus/compat/media/MediaRouterInfo;)V
.end method

.method public abstract onRouteSelected(ILcom/oplus/compat/media/MediaRouterInfo;)V
.end method

.method public abstract onRouteUnselected(ILcom/oplus/compat/media/MediaRouterInfo;)V
.end method

.method public abstract onRouteVolumeChanged(Lcom/oplus/compat/media/MediaRouterInfo;)V
.end method
