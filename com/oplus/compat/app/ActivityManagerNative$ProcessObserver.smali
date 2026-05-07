.class Lcom/oplus/compat/app/ActivityManagerNative$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/ActivityManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessObserver"
.end annotation


# instance fields
.field private final mObserver:Lcom/oplus/compat/app/IProcessObserverNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/app/IProcessObserverNative;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/oplus/compat/app/IProcessObserverNative;

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/oplus/compat/app/IProcessObserverNative;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/compat/app/IProcessObserverNative;->onForegroundActivitiesChanged(IIZ)V

    :cond_7
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/oplus/compat/app/IProcessObserverNative;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/compat/app/IProcessObserverNative;->onForegroundServicesChanged(III)V

    :cond_7
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/compat/app/ActivityManagerNative$ProcessObserver;->mObserver:Lcom/oplus/compat/app/IProcessObserverNative;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/IProcessObserverNative;->onProcessDied(II)V

    :cond_7
    return-void
.end method
