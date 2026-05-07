.class public interface abstract Lcom/oplus/market/aidl/IApiEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/market/aidl/IApiEngine$Stub;,
        Lcom/oplus/market/aidl/IApiEngine$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.market.aidl.IApiEngine"


# virtual methods
.method public abstract request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestSync(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
