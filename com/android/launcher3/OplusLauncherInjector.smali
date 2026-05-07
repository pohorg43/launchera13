.class public Lcom/android/launcher3/OplusLauncherInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OVERVIEW_REBIND_DELAY:J = 0x1f4L

.field private static sFromSplitScreenShortcutChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherInjector;->lambda$injectLauncherOnIdpChanged$0(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V

    return-void
.end method

.method public static injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v3, "Launcher"

    if-ne v1, v2, :cond_4a

    sget-boolean v1, Lcom/android/launcher3/OplusLauncherInjector;->sFromSplitScreenShortcutChanged:Z

    if-nez v1, :cond_4a

    const-string/jumbo p0, "onIdpChanged -- to rebind model! state = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v0}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/OplusLauncherInjector$1;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/OplusLauncherInjector$1;-><init>(Landroid/os/Handler;Lcom/android/launcher3/OplusLauncherModel;)V

    new-instance v0, Lcom/android/launcher3/t0;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/launcher3/t0;-><init>(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_7f

    :cond_4a
    const-string/jumbo p2, "onIdpChanged -- direct to rebind model! state = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v0}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->isEnteringChildrenMode()Z

    move-result p0

    if-nez p0, :cond_7c

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getFirstCardPreviewAfterEnterSimpleMode()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_7c

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    :cond_7c
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/OplusLauncherInjector;->sFromSplitScreenShortcutChanged:Z

    :goto_7f
    return-void
.end method

.method private static synthetic lambda$injectLauncherOnIdpChanged$0(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 5

    const-string v0, "Launcher"

    const-string/jumbo v1, "rebindCallbacks at postDelay"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    return-void
.end method

.method public static setFromSplitScreenShortcutChanged(Z)V
    .registers 3

    const-string/jumbo v0, "set fromSplitScreenShortcutChanged:"

    const-string v1, "Launcher"

    invoke-static {v0, p0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sput-boolean p0, Lcom/android/launcher3/OplusLauncherInjector;->sFromSplitScreenShortcutChanged:Z

    return-void
.end method

.method public static startLauncherSettings(Landroid/view/View;)Z
    .registers 5

    const-string v0, "Main"

    const-string/jumbo v1, "start: startSettings"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.launcher3.settings.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
