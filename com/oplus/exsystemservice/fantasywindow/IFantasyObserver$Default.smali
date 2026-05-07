.class public Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
