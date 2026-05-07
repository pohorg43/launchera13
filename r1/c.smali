.class public Lr1/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static volatile h:Lr1/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Landroid/content/ServiceConnection;

.field public d:Lr1/a;

.field public e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo1/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr1/c;->f:Z

    iput-object p1, p0, Lr1/c;->a:Landroid/content/Context;

    sget-object p1, Lr1/b;->a:Lr1/b;

    sget-boolean p1, Lo1/e;->b:Z

    if-eqz p1, :cond_11

    const/16 p1, 0x11

    goto :goto_13

    :cond_11
    const/16 p1, 0x41

    :goto_13
    iput p1, p0, Lr1/c;->b:I

    iput-object p0, p0, Lr1/c;->c:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const-string v0, "reConnectCheck mIgnoreReconnect:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lr1/c;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserLauncherClient-BrowserService"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lr1/c;->f:Z

    if-nez v0, :cond_4e

    iget-object p0, p0, Lr1/c;->e:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/b;

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-eqz p0, :cond_49

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_32

    const-string p0, "BrowserLauncherClient"

    const-string v0, "reconnectIfNecessary() mLauncher is null !"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_32
    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo1/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lo1/b;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    :cond_49
    const-string p0, "reConnectCheck client is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public b(Lr1/a;)V
    .registers 2

    iput-object p1, p0, Lr1/c;->d:Lr1/a;

    iget-object p0, p0, Lr1/c;->e:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/b;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_23

    iput-object p1, p0, Lo1/b;->s:Lr1/a;

    if-nez p1, :cond_1c

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo1/b;->n(I)V

    invoke-virtual {p0}, Lo1/b;->l()V

    goto :goto_23

    :cond_1c
    iget-object p1, p0, Lo1/b;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lo1/b;->e()V

    :cond_23
    :goto_23
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "onBindingDied, mStopped:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lr1/c;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrowserLauncherClient-BrowserService"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/c;->g:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr1/c;->b(Lr1/a;)V

    invoke-virtual {p0}, Lr1/c;->a()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "onNullBinding, mStopped:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lr1/c;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrowserLauncherClient-BrowserService"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/c;->g:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr1/c;->b(Lr1/a;)V

    invoke-virtual {p0}, Lr1/c;->a()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "BrowserLauncherClient-BrowserService"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/c;->f:Z

    new-instance p1, Lr1/a;

    invoke-direct {p1, p2}, Lr1/a;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, p1}, Lr1/c;->b(Lr1/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr1/c;->g:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "onServiceDisconnected, mStopped:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lr1/c;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrowserLauncherClient-BrowserService"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/c;->g:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr1/c;->b(Lr1/a;)V

    invoke-virtual {p0}, Lr1/c;->a()V

    return-void
.end method
