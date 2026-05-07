.class public interface abstract Lcom/oplus/tingle/ipc/IMaster;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tingle/ipc/IMaster$Stub;,
        Lcom/oplus/tingle/ipc/IMaster$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.tingle.ipc.IMaster"


# virtual methods
.method public abstract getUid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
