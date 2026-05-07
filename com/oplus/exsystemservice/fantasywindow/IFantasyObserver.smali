.class public interface abstract Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver$Stub;,
        Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.exsystemservice.fantasywindow.IFantasyObserver"


# virtual methods
.method public abstract registerObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
