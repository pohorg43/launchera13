.class public interface abstract Lcom/nearme/instant/xcard/provider/ILocationCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/instant/xcard/provider/ILocationCallback$_Parcel;,
        Lcom/nearme/instant/xcard/provider/ILocationCallback$Stub;,
        Lcom/nearme/instant/xcard/provider/ILocationCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.nearme.instant.xcard.provider.ILocationCallback"


# virtual methods
.method public abstract onGetLocation(ILandroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
