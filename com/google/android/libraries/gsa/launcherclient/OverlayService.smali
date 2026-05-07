.class public Lcom/google/android/libraries/gsa/launcherclient/OverlayService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherClient-OverlayService"

.field public static sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;


# instance fields
.field private final mBridge:Landroid/content/ServiceConnection;

.field public mClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mFlags:I

.field private mIgnoreReconnect:Z

.field public mOverlay:Lcom/android/overlay/OverlayProxy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mIgnoreReconnect:Z

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/overlay/OverlayKeepAliveService;->getOverlayPriority()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mFlags:I

    iput-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mBridge:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/OverlayService;
    .registers 2

    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    :cond_f
    sget-object p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    return-object p0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "LauncherClient-OverlayService"

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    if-nez p1, :cond_2d

    :cond_f
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2d

    :try_start_13
    const-string p1, "bindOverlayService"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mBridge:Landroid/content/ServiceConnection;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mFlags:I

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_38

    :catchall_26
    move-exception p0

    const-string p1, "Unable to connect to overlay service"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_2d
    const-string p1, "connect service already connected, mConnected:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_38
    return-void
.end method

.method public disconnect()V
    .registers 4

    const-string v0, "disconnect, mConnected:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    const-string v2, "LauncherClient-OverlayService"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mBridge:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    :cond_1d
    return-void
.end method

.method public final getClient()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
    .registers 1

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mClient:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public isConnected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "LauncherClient-OverlayService"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mIgnoreReconnect:Z

    invoke-static {p2}, Lcom/android/overlay/OverlayProxy$Builder;->create(Landroid/os/IBinder;)Lcom/android/overlay/OverlayProxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->setOverlay(Lcom/android/overlay/OverlayProxy;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string p1, "onServiceDisconnected, mStopped:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mIgnoreReconnect:Z

    const-string v1, "LauncherClient-OverlayService"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mConnected:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->setOverlay(Lcom/android/overlay/OverlayProxy;)V

    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mIgnoreReconnect:Z

    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getClient()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnectIfNecessary()V

    :cond_21
    return-void
.end method

.method public final setIgnoreReconnect(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mIgnoreReconnect:Z

    return-void
.end method

.method public setOverlay(Lcom/android/overlay/OverlayProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getClient()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setOverlay(Lcom/android/overlay/OverlayProxy;)V

    :cond_d
    return-void
.end method
