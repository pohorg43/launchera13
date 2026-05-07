.class public Lo1/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager;


# instance fields
.field public final a:Lcom/android/launcher/Launcher;

.field public b:Lo1/b;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo1/d;->c:Z

    iput-object p1, p0, Lo1/d;->a:Lcom/android/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "connectBrowserNews mClient not null: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo1/d;->b:Lo1/b;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_19

    invoke-virtual {p0, p1}, Lo1/b;->b(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public b(IZ)V
    .registers 5

    iget-object v0, p0, Lo1/d;->a:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    const-string p1, "Can\'t hide overlay because in toggle bar state, exit the state first"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lo1/d;->b:Lo1/b;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "BrowserLauncherCycleCallbacksImp-hideOverlay"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    invoke-virtual {p0, p1, p2}, Lo1/b;->f(IZ)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "BrowserLauncherCycleCallbacksImp."

    const-string v1, ", mClient not null:"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    const-string v0, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public d(I)V
    .registers 5

    const-string v0, "openAlphaOverlay mClient not null:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo1/d;->b:Lo1/b;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lo1/d;->b:Lo1/b;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "BrowserLauncherCycleCallbacksImp-openAlphaOverlay"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    invoke-virtual {p0, p1}, Lo1/b;->j(I)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public hideOverlay(I)V
    .registers 5

    const-string v0, "hideOverlay mClient not null: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo1/d;->b:Lo1/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lo1/d;->b(IZ)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    const-string p2, "onCreate"

    invoke-virtual {p0, p2}, Lo1/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result p2

    if-eqz p2, :cond_5f

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "disable_browser_news"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-gez p2, :cond_1f

    move p2, v0

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    :goto_20
    const-string v2, "SupportBrowserNewsHelper"

    if-eqz p2, :cond_2a

    const-string/jumbo v3, "userNeverSetSwitch, is default value -1 or -2"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    if-eqz p2, :cond_5f

    const-string p2, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    const-string v3, "onActivityCreated, ota open setting switch"

    invoke-static {p2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitch, value:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " caller:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    sget-object p2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lo1/d;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 7

    const-string p1, "onDestroy"

    invoke-virtual {p0, p1}, Lo1/d;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v0, "BrowserLauncherCycleCallbacksImp-onDestroy"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_a2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BrowserLauncherClient"

    const-string v2, "onDestroyed"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lo1/b;->e:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lo1/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lo1/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lo1/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_46
    iget-object v2, p0, Lo1/b;->l:Lp1/c;

    if-eqz v2, :cond_61

    iget-object v2, v2, Lp1/c;->a:Lp1/a;

    if-eqz v2, :cond_5f

    check-cast v2, Lcom/heytap/browser/a;

    const-string v3, "OverlayBrowserCallback"

    const-string v4, "OverlayBrowserCallback destroy"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iput-object v0, v2, Lp1/c$a;->b:Lo1/b;

    iput-object v0, v2, Lp1/c$a;->e:Landroid/view/Window;

    iput-object v0, v2, Lp1/c$a;->c:Landroid/view/WindowManager;

    :cond_5f
    iput-object v0, p0, Lo1/b;->l:Lp1/c;

    :cond_61
    :try_start_61
    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lo1/b;->s:Lr1/a;

    iget-object v2, v2, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz v2, :cond_77

    invoke-interface {v2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onDestory()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_70} :catch_71

    goto :goto_77

    :catch_71
    move-exception v2

    const-string v3, "onDestory exception, message:"

    invoke-static {v3, v2, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_77
    :goto_77
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lo1/b;->c(Z)V

    sput-object v0, Lr1/c;->h:Lr1/c;

    invoke-virtual {p0}, Lo1/b;->l()V

    iput-object v0, p0, Lo1/b;->B:Ljava/lang/String;

    sget-object v1, Lr1/b;->a:Lr1/b;

    const-string v1, "BrowserLauncherClient-BrowserOverlayKeepAliveService"

    const-string/jumbo v2, "stopKeepAliveImmediately"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lr1/b;->e:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput v1, p0, Lo1/b;->q:I

    iput v1, p0, Lo1/b;->o:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lo1/b;->p:J

    iput-boolean v1, p0, Lo1/b;->D:Z

    invoke-virtual {p0}, Lo1/b;->d()V

    :cond_a2
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    const-string p0, "BrowserNewsRusHelper"

    const-string p1, "BrowserNewsRusHelper onDestroy"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lq1/b;->c:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    if-nez p0, :cond_b3

    goto :goto_bc

    :cond_b3
    sget-object p1, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {p1}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/rusconfig/RusBaseConfigManager;->unregisterRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    :goto_bc
    sput-object v0, Lq1/b;->c:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    const-string p1, "onPause"

    invoke-virtual {p0, p1}, Lo1/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "BrowserLauncherCycleCallbacksImp-onPause"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_36

    invoke-virtual {p0, p1}, Lo1/b;->h(Ljava/lang/String;)V

    iget p1, p0, Lo1/b;->r:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lo1/b;->r:I

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lo1/b;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_36

    :try_start_24
    iget-object p0, p0, Lo1/b;->s:Lr1/a;

    iget-object p0, p0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p0, :cond_36

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onPause()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception p0

    const-string p1, "onPause exception, message:"

    const-string v1, "BrowserLauncherClient"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_36
    :goto_36
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    const-string p1, "onResume"

    invoke-virtual {p0, p1}, Lo1/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "BrowserLauncherCycleCallbacksImp-onResume"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_60

    const-string v1, "BrowserLauncherClient"

    invoke-virtual {p0, p1}, Lo1/b;->h(Ljava/lang/String;)V

    iget p1, p0, Lo1/b;->r:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lo1/b;->r:I

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lo1/b;->k:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_60

    :try_start_26
    iget-object p1, p0, Lo1/b;->s:Lr1/a;

    iget-object p1, p1, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onResume()V

    :cond_2f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThreadPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0xa

    if-le p1, v2, :cond_50

    goto :goto_60

    :cond_50
    const-string p1, "close_browser_news_onresume"

    invoke-virtual {p0, p1}, Lo1/b;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo1/b;->p(Z)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_59} :catch_5a

    goto :goto_60

    :catch_5a
    move-exception p0

    const-string p1, "onResume exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_60
    :goto_60
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    const-string p1, "onStart:mStarted, "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lo1/d;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/d;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v0, "BrowserLauncherCycleCallbacksImp-onStart"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean v0, p0, Lo1/d;->c:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lo1/d;->b:Lo1/b;

    if-eqz v0, :cond_43

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lo1/b;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lo1/b;->g()Z

    move-result v2

    if-eqz v2, :cond_40

    :try_start_2d
    iget-object v0, v0, Lo1/b;->s:Lr1/a;

    iget-object v0, v0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onStart()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_43

    :catch_37
    move-exception v0

    const-string v1, "onStart exception, message:"

    const-string v2, "BrowserLauncherClient"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_43

    :cond_40
    invoke-virtual {v0, v1}, Lo1/b;->b(Ljava/lang/String;)V

    :cond_43
    :goto_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo1/d;->c:Z

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    const-string p1, "onStop"

    invoke-virtual {p0, p1}, Lo1/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "BrowserLauncherCycleCallbacksImp-onStop"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo1/d;->c:Z

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_5d

    const-string v1, "BrowserLauncherClient"

    invoke-virtual {p0, p1}, Lo1/b;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p1

    if-eqz p1, :cond_5d

    :try_start_1f
    iget-boolean p1, p0, Lo1/b;->u:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_32

    iget-object p1, p0, Lo1/b;->s:Lr1/a;

    iget-object p1, p1, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p1, :cond_2d

    invoke-interface {p1, v2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onScroll(F)V

    :cond_2d
    iget-object p1, p0, Lo1/b;->s:Lr1/a;

    invoke-virtual {p1, v2}, Lr1/a;->a(F)V

    :cond_32
    iget-object p1, p0, Lo1/b;->s:Lr1/a;

    iget-object p1, p1, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onStop()V

    :cond_3b
    iget-object p1, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_46

    const-string/jumbo p0, "stopKeepAlive, mLauncher is null, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_46
    iget p0, p0, Lo1/b;->n:F

    cmpl-float p0, p0, v2

    if-lez p0, :cond_53

    const-string/jumbo p0, "stopKeepAlive, browser news is showing, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_53
    invoke-static {p1}, Lr1/b;->b(Landroid/app/Activity;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_56} :catch_57

    goto :goto_5d

    :catch_57
    move-exception p0

    const-string p1, "onStop exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    const-string v0, "onAttachedToWindow"

    invoke-virtual {p0, v0}, Lo1/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "BrowserLauncherCycleCallbacksImp-onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lo1/b;->i()V

    :cond_14
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    const-string v0, "onDetachedFromWindow"

    invoke-virtual {p0, v0}, Lo1/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "BrowserLauncherCycleCallbacksImp-onDetachedFromWindow"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lo1/b;->m(Landroid/view/WindowManager$LayoutParams;)V

    :cond_15
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method
