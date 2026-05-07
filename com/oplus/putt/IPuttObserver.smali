.class public interface abstract Lcom/oplus/putt/IPuttObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/putt/IPuttObserver$Stub;,
        Lcom/oplus/putt/IPuttObserver$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.putt.IPuttObserver"


# virtual methods
.method public abstract onPuttEnter(Lcom/oplus/putt/OplusPuttEnterInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPuttExit(Lcom/oplus/putt/OplusPuttExitInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPuttReplace(Lcom/oplus/putt/OplusPuttEnterInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
