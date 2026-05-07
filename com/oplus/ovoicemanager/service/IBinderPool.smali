.class public interface abstract Lcom/oplus/ovoicemanager/service/IBinderPool;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ovoicemanager/service/IBinderPool$Stub;,
        Lcom/oplus/ovoicemanager/service/IBinderPool$Default;
    }
.end annotation


# virtual methods
.method public abstract queryBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
