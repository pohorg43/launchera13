.class public interface abstract Lcom/oplus/epona/ITransferCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/epona/ITransferCallback$Stub;,
        Lcom/oplus/epona/ITransferCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.epona.ITransferCallback"


# virtual methods
.method public abstract onReceive(Lcom/oplus/epona/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
