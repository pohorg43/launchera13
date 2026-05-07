.class public interface abstract Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub;,
        Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.assistantscreen.shelf.launcherclient.ILauncherClient"


# virtual methods
.method public abstract onProfileChanged(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
