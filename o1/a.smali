.class public final synthetic Lo1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo1/b;


# direct methods
.method public synthetic constructor <init>(Lo1/b;I)V
    .registers 4

    iput p2, p0, Lo1/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/a;->b:Lo1/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget v0, p0, Lo1/a;->a:I

    const-string v1, "BrowserLauncherClient"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_82

    goto :goto_54

    :pswitch_9  #0x1
    iget-object p0, p0, Lo1/a;->b:Lo1/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lo1/b;->p:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    const/4 v5, 0x0

    if-gtz v0, :cond_23

    iget v0, p0, Lo1/b;->o:I

    add-int/2addr v0, v2

    iput v0, p0, Lo1/b;->o:I

    goto :goto_27

    :cond_23
    iput v5, p0, Lo1/b;->o:I

    iput-wide v3, p0, Lo1/b;->p:J

    :goto_27
    iget v0, p0, Lo1/b;->o:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_45

    const-string v0, "resetConnectError,connect more times, not connectIfNecessary!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lo1/b;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo1/b;->p:J

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lo1/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4a

    :cond_45
    const-string v0, "reconnect"

    invoke-virtual {p0, v0}, Lo1/b;->b(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void

    :pswitch_4b  #0x0
    iget-object p0, p0, Lo1/a;->b:Lo1/b;

    iget-object p0, p0, Lo1/b;->h:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onOverlayScrollChanged(F)V

    return-void

    :goto_54
    iget-object p0, p0, Lo1/a;->b:Lo1/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mConnectRunnable, reconnect when browser status change"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_6f

    invoke-static {v0}, Lo1/e;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-static {v0, v2}, Lo1/e;->a(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lo1/e;->f(Landroid/content/Context;)V

    :cond_6f
    iget-object v0, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_79

    const-string p0, "updateConnectState -- mLauncher is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :cond_79
    invoke-static {v0}, Lo1/e;->f(Landroid/content/Context;)V

    const-string v0, "onBrodcastReceive"

    invoke-virtual {p0, v0}, Lo1/b;->b(Ljava/lang/String;)V

    :goto_81
    return-void

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_9  #00000001
    .end packed-switch
.end method
