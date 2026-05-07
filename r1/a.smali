.class public Lr1/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/heytap/browser/ILauncherOverlayBrowser;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/heytap/browser/ILauncherOverlayBrowser$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/browser/ILauncherOverlayBrowser;

    move-result-object p1

    iput-object p1, p0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->endScrollWithVelocity(F)V

    :cond_7
    return-void
.end method
