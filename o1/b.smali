.class public Lo1/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Landroidx/appcompat/app/AlertDialog;

.field public D:Z

.field public final a:Lr1/c;

.field public final b:Landroid/content/BroadcastReceiver;

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/lang/Runnable;

.field public final e:Landroid/database/ContentObserver;

.field public f:I

.field public g:I

.field public h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

.field public i:I

.field public j:I

.field public k:Landroid/view/WindowManager$LayoutParams;

.field public l:Lp1/c;

.field public m:Lcom/android/launcher/Launcher;

.field public n:F

.field public o:I

.field public p:J

.field public q:I

.field public r:I

.field public s:Lr1/a;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:J

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo1/b$a;

    invoke-direct {v0, p0}, Lo1/b$a;-><init>(Lo1/b;)V

    iput-object v0, p0, Lo1/b;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Lo1/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lo1/a;-><init>(Lo1/b;I)V

    iput-object v1, p0, Lo1/b;->c:Ljava/lang/Runnable;

    new-instance v1, Lo1/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lo1/a;-><init>(Lo1/b;I)V

    iput-object v1, p0, Lo1/b;->d:Ljava/lang/Runnable;

    new-instance v1, Lo1/b$b;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lo1/b$b;-><init>(Lo1/b;Landroid/os/Handler;)V

    iput-object v1, p0, Lo1/b;->e:Landroid/database/ContentObserver;

    const/16 v2, 0x1388

    iput v2, p0, Lo1/b;->f:I

    const/4 v2, 0x3

    iput v2, p0, Lo1/b;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lo1/b;->i:I

    const/4 v3, 0x0

    iput v3, p0, Lo1/b;->n:F

    iput v2, p0, Lo1/b;->o:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lo1/b;->p:J

    iput v2, p0, Lo1/b;->q:I

    iput v2, p0, Lo1/b;->r:I

    iput-boolean v2, p0, Lo1/b;->u:Z

    iput-boolean v2, p0, Lo1/b;->v:Z

    iput-object p1, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    const/16 p2, 0xf

    iput p2, p0, Lo1/b;->j:I

    sget-object p2, Lr1/c;->h:Lr1/c;

    if-nez p2, :cond_65

    const-class p2, Lr1/c;

    monitor-enter p2

    :try_start_51
    sget-object v3, Lr1/c;->h:Lr1/c;

    if-nez v3, :cond_60

    new-instance v3, Lr1/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lr1/c;-><init>(Landroid/content/Context;)V

    sput-object v3, Lr1/c;->h:Lr1/c;

    :cond_60
    monitor-exit p2

    goto :goto_65

    :catchall_62
    move-exception p0

    monitor-exit p2
    :try_end_64
    .catchall {:try_start_51 .. :try_end_64} :catchall_62

    throw p0

    :cond_65
    :goto_65
    sget-object p2, Lr1/c;->h:Lr1/c;

    iput-object p2, p0, Lo1/b;->a:Lr1/c;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p2, Lr1/c;->e:Ljava/lang/ref/WeakReference;

    iget-object p2, p2, Lr1/c;->d:Lr1/a;

    iput-object p2, p0, Lo1/b;->s:Lr1/a;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v3, "open_browser_news_dialog"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lo1/b;->t:Z

    iget-object p2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "disable_browser_news"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const p2, 0x7f1203db

    invoke-static {p2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lo1/b;->i()V

    const-string p0, "BrowserLauncherClient"

    const-string p1, "BrowserLauncherClient init end"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lo1/b;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    const v1, 0x7f120139

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo1/b;->B:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    const-string v0, "connectIfNecessary reason:"

    const-string v1, "BrowserLauncherClient"

    invoke-static {v0, p1, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_c

    return-void

    :cond_c
    sget-boolean p1, Lo1/e;->a:Z

    if-eqz p1, :cond_51

    iget-object p1, p0, Lo1/b;->a:Lr1/c;

    if-eqz p1, :cond_55

    iget-boolean p1, p1, Lr1/c;->g:Z

    if-nez p1, :cond_55

    const-string p1, "connectIfNecessary connect, callers:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo1/b;->a:Lr1/c;

    iget-boolean p1, p0, Lr1/c;->g:Z

    if-nez p1, :cond_43

    iget-object p1, p0, Lr1/c;->a:Landroid/content/Context;

    if-eqz p1, :cond_43

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/widget/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/a;-><init>(Lr1/c;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_55

    :cond_43
    const-string p1, "connect, service already connected, mConnected:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lr1/c;->g:Z

    const-string v0, "BrowserLauncherClient-BrowserService"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_55

    :cond_51
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lo1/b;->c(Z)V

    :cond_55
    :goto_55
    return-void
.end method

.method public final c(Z)V
    .registers 5

    iget-object v0, p0, Lo1/b;->a:Lr1/c;

    if-eqz v0, :cond_6c

    const-string v0, "disconnectBySelf"

    invoke-virtual {p0, v0}, Lo1/b;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lo1/b;->a:Lr1/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIgnoreReconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrowserLauncherClient-BrowserService"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, v0, Lr1/c;->f:Z

    iget-object p1, p0, Lo1/b;->a:Lr1/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr1/c;->b(Lr1/a;)V

    iget-object p0, p0, Lo1/b;->a:Lr1/c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disconnect, mConnected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lr1/c;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mContext != null:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lr1/c;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lr1/c;->g:Z

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lr1/c;->a:Landroid/content/Context;

    if-eqz p1, :cond_6c

    iget-object v0, p0, Lr1/c;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, p0, Lr1/c;->g:Z

    :cond_6c
    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "BrowserLauncherClient"

    const-string v1, "dismissDialog."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    :cond_19
    return-void
.end method

.method public final e()V
    .registers 4

    const-string v0, "exchangeConfig mActivityState "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo1/b;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo1/b;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_54

    :try_start_1c
    iget-object v0, p0, Lo1/b;->l:Lp1/c;

    if-nez v0, :cond_27

    new-instance v0, Lp1/c;

    invoke-direct {v0}, Lp1/c;-><init>()V

    iput-object v0, p0, Lo1/b;->l:Lp1/c;

    :cond_27
    iget-object v0, p0, Lo1/b;->l:Lp1/c;

    iget-object v1, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lp1/c;->a(Lo1/b;Landroid/view/WindowManager;Landroid/view/Window;)V

    iget-object v0, p0, Lo1/b;->s:Lr1/a;

    iget-object v1, p0, Lo1/b;->k:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lo1/b;->l:Lp1/c;

    iget p0, p0, Lo1/b;->j:I

    iget-object v0, v0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz v0, :cond_54

    iget-object v2, v2, Lp1/c;->a:Lp1/a;

    check-cast v2, Lcom/heytap/browser/ILauncherOverlayBrowserCallback;

    invoke-interface {v0, v1, v2, p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/heytap/browser/ILauncherOverlayBrowserCallback;I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_4b} :catch_4c

    goto :goto_54

    :catch_4c
    move-exception p0

    const-string v0, "setLayoutParams exception, message:"

    const-string v1, "BrowserLauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public final f(IZ)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOverlay, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anima = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConnected() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBrowserProcess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo1/b;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", Callers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserLauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v0

    if-eqz v0, :cond_60

    iget v0, p0, Lo1/b;->n:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_60

    :try_start_4f
    iget-object p0, p0, Lo1/b;->s:Lr1/a;

    iget-object p0, p0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p0, :cond_88

    invoke-interface {p0, p1, p2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->closeOverlay(IZ)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_58} :catch_59

    goto :goto_88

    :catch_59
    move-exception p0

    const-string p1, "hideOverlay exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_88

    :cond_60
    const-string p1, "hideOverlay but ignore, isConnected: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ,mBrowserProcess: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo1/b;->n:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " ,mIsScrolling: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lo1/b;->u:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    :goto_88
    return-void
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lo1/b;->a:Lr1/c;

    iget-object v1, v0, Lr1/c;->e:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lr1/c;->e:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lo1/b;->a:Lr1/c;

    iget-object v0, v0, Lr1/c;->d:Lr1/a;

    iput-object v0, p0, Lo1/b;->s:Lr1/a;

    :cond_13
    iget-object p0, p0, Lo1/b;->s:Lr1/a;

    if-nez p0, :cond_20

    const-string p0, "BrowserLauncherClient"

    const-string v0, "browser isConnected false because mOverlay is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherClient."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mDestroyed:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", browserProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo1/b;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", overlay connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", layoutParams:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo1/b;->k:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_36

    const/4 p1, 0x1

    :cond_36
    const-string p0, "BrowserLauncherClient"

    invoke-static {v0, p1, p0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final i()V
    .registers 4

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo1/b;->m(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_5d

    :cond_34
    const-string v0, "onAttachedToWindow mDestroyed:"

    const/4 v1, 0x0

    const-string v2, " mLauncher:"

    invoke-static {v0, v1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLauncher.getWindow():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_4d

    const/4 p0, 0x0

    goto :goto_51

    :cond_4d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    :goto_51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BrowserLauncherClient"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

.method public j(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openAlphaOverlay type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserLauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lo1/b;->s:Lr1/a;

    iget-object v0, v0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->openAlphaOverlay(I)V

    :cond_25
    const/4 p1, 0x0

    iput-boolean p1, p0, Lo1/b;->D:Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception p0

    const-string p1, "openAlphaOverlay exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final k(Lcom/android/launcher/Launcher;)Ljava/lang/String;
    .registers 7

    const-string v0, "requestBrowserNewsResource string:"

    const-string v1, "BrowserLauncherClient"

    const v2, 0x7f1203db

    :try_start_7
    invoke-static {v2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v3, "app_feeds_slide_up_name"

    const-string/jumbo v4, "string"

    invoke-virtual {p1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo1/b;->B:Ljava/lang/String;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_22} :catch_4f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_22} :catch_2d
    .catchall {:try_start_7 .. :try_end_22} :catchall_2b

    invoke-virtual {p0}, Lo1/b;->a()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_70

    :catchall_2b
    move-exception p1

    goto :goto_7b

    :catch_2d
    move-exception p1

    :try_start_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestBrowserNewsResource NotFoundException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_2b

    invoke-virtual {p0}, Lo1/b;->a()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_70

    :catch_4f
    move-exception p1

    :try_start_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestBrowserNewsResource NameNotFoundException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_2b

    invoke-virtual {p0}, Lo1/b;->a()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo1/b;->B:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo1/b;->B:Ljava/lang/String;

    return-object p0

    :goto_7b
    invoke-virtual {p0}, Lo1/b;->a()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo1/b;->B:Ljava/lang/String;

    invoke-static {v2, p0, v1}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final l()V
    .registers 3

    const-string v0, "BrowserLauncherClient"

    const-string v1, "resetCalculateValue"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo1/b;->y:J

    iput-wide v0, p0, Lo1/b;->w:J

    iput-wide v0, p0, Lo1/b;->x:J

    return-void
.end method

.method public final m(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lo1/b;->k:Landroid/view/WindowManager$LayoutParams;

    if-eq v0, p1, :cond_2f

    iput-object p1, p0, Lo1/b;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lo1/b;->e()V

    goto :goto_2f

    :cond_c
    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p1

    if-eqz p1, :cond_2f

    :try_start_12
    iget-object p1, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lo1/b;->s:Lr1/a;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    iget-object v0, v0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz v0, :cond_2c

    invoke-interface {v0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->windowDetached(Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception p1

    const-string v0, "setLayoutParams exception, message:"

    const-string v1, "BrowserLauncherClient"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    iput-object p1, p0, Lo1/b;->s:Lr1/a;

    :cond_2f
    :goto_2f
    return-void
.end method

.method public n(I)V
    .registers 5

    const-string v0, "setServiceState,new state:"

    const-string v1, " old state:"

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo1/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserLauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lo1/b;->i:I

    if-eq v0, p1, :cond_82

    iput p1, p0, Lo1/b;->i:I

    iget-boolean v0, p0, Lo1/b;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz v0, :cond_59

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_49

    iget-object v0, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    const/4 v2, 0x1

    and-int/2addr p1, v2

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v2, v1

    :goto_45
    invoke-interface {v0, v2}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onServiceStateChanged(Z)V

    goto :goto_59

    :cond_49
    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/allapps/k;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/allapps/k;-><init>(Lo1/b;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_59
    :goto_59
    iget p1, p0, Lo1/b;->i:I

    if-nez p1, :cond_82

    iget-object p1, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz p1, :cond_82

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_72

    iget-object p0, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onOverlayScrollChanged(F)V

    goto :goto_82

    :cond_72
    iget-object p1, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lo1/a;

    invoke-direct {v0, p0, v1}, Lo1/a;-><init>(Lo1/b;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_82
    :goto_82
    return-void
.end method

.method public final o()V
    .registers 9

    iget-boolean v0, p0, Lo1/b;->A:Z

    const-string v1, "BrowserLauncherClient"

    if-nez v0, :cond_d

    const-string/jumbo p0, "startCalculateShowBrowserNewsDialog,browser not allow privacy"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget v0, p0, Lo1/b;->g:I

    if-gtz v0, :cond_18

    const-string/jumbo p0, "startCalculateShowBrowserNewsDialog,mCalculateCountMax is invalid"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget-boolean v0, p0, Lo1/b;->t:Z

    if-nez v0, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lo1/b;->x:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_32

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gtz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-boolean v0, p0, Lo1/b;->z:Z

    if-nez v0, :cond_3a

    iput-wide v2, p0, Lo1/b;->w:J

    goto :goto_54

    :cond_3a
    const-string/jumbo p0, "startScroll, Jump Current Scroll"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_41
    const-string/jumbo v0, "startCalculateShowBrowserNewsDialog closeBrowserNewsResult:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lo1/b;->t:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void
.end method

.method public p(Z)V
    .registers 6

    iget-object p0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_d

    const-string p0, "BrowserLauncherClient"

    const-string/jumbo p1, "startKeepAlive, mLauncher is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    sget-object v0, Lr1/b;->a:Lr1/b;

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lo1/e;->a:Z

    const-string v1, "BrowserLauncherClient-BrowserOverlayKeepAliveService"

    if-nez v0, :cond_24

    const-string/jumbo p1, "startKeepAlive, not support browser overlay"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lr1/b;->b(Landroid/app/Activity;)V

    goto :goto_5e

    :cond_24
    sget-boolean v0, Lo1/e;->b:Z

    if-nez v0, :cond_2f

    const-string/jumbo p0, "startKeepAlive, not support keepAlive browser overlay"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_2f
    sget-object v0, Lr1/b;->a:Lr1/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lr1/b;->d:J

    sget-object v2, Lr1/b;->e:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    sget-boolean v2, Lr1/b;->b:Z

    if-eqz v2, :cond_47

    const-string/jumbo p0, "startKeepAlive, mKeepAliveConnected is true,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_47
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string p0, "<set-?>"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lr1/b;->c:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_59

    invoke-virtual {v0}, Lr1/b;->a()V

    goto :goto_5e

    :cond_59
    sget-object p0, Lcom/android/common/util/e;->g:Lcom/android/common/util/e;

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    :goto_5e
    return-void
.end method
