.class public final Lcom/android/keyguardservice/FastUnlockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguardservice/FastUnlockManager$Companion;,
        Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

.field private static final SKIP_SPEED_UNLOCK:Ljava/lang/String; = "skip_speed_unlock"

.field private static final TAG:Ljava/lang/String; = "FastUnlockManager"


# instance fields
.field private mIgnoreSkipByLauncher:Z

.field private final mKeyGuardDismissedServiceConnection:Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

.field private mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mSkipFastUnlockByLauncher:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/keyguardservice/FastUnlockManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguardservice/FastUnlockManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

    invoke-direct {p1, p0}, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;-><init>(Lcom/android/keyguardservice/FastUnlockManager;)V

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceConnection:Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.KeyGuardDismissedService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    const-class v3, Lcom/android/keyguardservice/KeyGuardDismissedService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static final synthetic access$setMKeyGuardDismissedServiceMessenger$p(Lcom/android/keyguardservice/FastUnlockManager;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private final notifyKeyGuardDismissedServiceLauncherOnStop()V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    :cond_e
    :goto_e
    move v2, v3

    goto :goto_1d

    :cond_10
    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_e

    :cond_17
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-ne v1, v2, :cond_e

    :goto_1d
    if-eqz v2, :cond_27

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    if-nez p0, :cond_24

    goto :goto_27

    :cond_24
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private final notifyKeyGuardDismissedServiceUnlock()V
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceMessenger:Landroid/os/Messenger;

    if-nez p0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_f
    return-void
.end method

.method public static final notifySkipFastUnlock(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    return-void
.end method

.method private final skipFastUnlockIfNeeded()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mIgnoreSkipByLauncher:Z

    const-string/jumbo v1, "skipFastUnlockIfNeeded, mIgnoreSkipByLauncher = "

    const-string v2, "FastUnlockManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mIgnoreSkipByLauncher:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_23
    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_35

    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mSkipFastUnlockByLauncher:Z

    sget-object v1, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, p0, v0}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    :cond_35
    return-void
.end method


# virtual methods
.method public final onLauncherDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mKeyGuardDismissedServiceConnection:Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    return-void
.end method

.method public final onLauncherOnStop()V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->skipFastUnlockIfNeeded()V

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->notifyKeyGuardDismissedServiceLauncherOnStop()V

    return-void
.end method

.method public final onLauncherResume()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/keyguardservice/FastUnlockManager;->mSkipFastUnlockByLauncher:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mSkipFastUnlockByLauncher:Z

    sget-object v0, Lcom/android/keyguardservice/FastUnlockManager;->Companion:Lcom/android/keyguardservice/FastUnlockManager$Companion;

    iget-object v2, p0, Lcom/android/keyguardservice/FastUnlockManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguardservice/FastUnlockManager$Companion;->notifySkipFastUnlock(Landroid/content/Context;Z)V

    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/keyguardservice/FastUnlockManager;->setIgnoreSkipByLauncher(Z)V

    return-void
.end method

.method public final onScreenOffReceiver()V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->skipFastUnlockIfNeeded()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/keyguardservice/FastUnlockManager;->notifyKeyGuardDismissedServiceUnlock()V

    :cond_5
    return-void
.end method

.method public final setIgnoreSkipByLauncher(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguardservice/FastUnlockManager;->mIgnoreSkipByLauncher:Z

    return-void
.end method
