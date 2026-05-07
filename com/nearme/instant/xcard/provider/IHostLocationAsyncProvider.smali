.class public interface abstract Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider$Stub;,
        Lcom/nearme/instant/xcard/provider/IHostLocationAsyncProvider$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.nearme.instant.xcard.provider.IHostLocationAsyncProvider"


# virtual methods
.method public abstract getLocation(ILcom/nearme/instant/xcard/provider/ILocationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLocationCardInfo(ILcom/nearme/instant/xcard/provider/ILocationCallback;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
