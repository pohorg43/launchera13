.class public Lcom/android/keyguardservice/KeyGuardDismissedService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z

.field private static final DELAY_FRAME_NUM:J = 0x3L

.field private static final MESSAGE_TIMEOUT:I = 0x12c

.field private static final MSG_CHANGE_PAGE_VISIBILITY:I = 0x1

.field private static final MSG_DO_ANIMATION:I = 0x2

.field private static final MSG_HIDE_FOLDER:I = 0x3

.field private static final MSG_HIDE_PAGE:I = 0x1

.field public static final MSG_LAUNCHER_ON_STOP:I = 0x66

.field private static final MSG_LOCK_SCREEN:I = 0x5

.field private static final MSG_REMOVE_PENDING_LOCK_MSG:I = 0x67

.field public static final MSG_UNLOCK_SCREEN:I = 0x4

.field private static final PENDING_LOCK_MSG_ALIVE_TIME:J = 0x1f4L

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_LOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyGuardDismissedService"

.field private static sShowUnlockAnimationOnNextResume:Z


# instance fields
.field private final mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

.field private mPendingLockScreenMsg:Z

.field private mPreviousMsg:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->DEBUG_ENABLE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;-><init>(Lcom/android/keyguardservice/KeyGuardDismissedService;)V

    iput-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPreviousMsg:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/keyguardservice/KeyGuardDismissedService;->lambda$handleMessage$0(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private doHideDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-string v1, "KeyGuardDismissedService"

    if-eq p0, v0, :cond_18

    const-string p0, "[doHideDragLayer] Launcher not in state NORMAL, ignore unlock anim"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_18
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getDismissKeyguardAnimSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "doHideDragLayer and stop unlockAnimaSet."

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2f
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/OplusWorkspace;->setDragLayerAlpha(F)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$0(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x1

    const v1, 0x305d8b

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method

.method private setPendingLockScreenMsg(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    const-string v0, "handleMessage msg.what="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "KeyGuardDismissedService"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v3, 0x5

    if-eq v3, v0, :cond_15

    if-ne v1, v0, :cond_1e

    :cond_15
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableUnlockAnim()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string p0, "handleMessage --- LauncherAppState is null, return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_20e

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    if-nez v4, :cond_40

    const-string p0, "handleMessage --- workspace is null, do nothing, return!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sget-boolean v7, Lcom/android/keyguardservice/KeyGuardDismissedService;->DEBUG_ENABLE:Z

    if-eqz v7, :cond_71

    const-string v8, "handleMessage --- msg.what = "

    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", msg.arg1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", deltaTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    const-wide/16 v8, 0x12c

    cmp-long v8, v5, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v8, :cond_7b

    move v8, v9

    goto :goto_7c

    :cond_7b
    move v8, v10

    :goto_7c
    iget v11, p1, Landroid/os/Message;->what:I

    if-ne v9, v11, :cond_ac

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_87

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    goto :goto_89

    :cond_87
    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    :goto_89
    sget-object v1, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    if-ne v0, v1, :cond_a7

    if-eqz v8, :cond_a7

    if-eqz v7, :cond_209

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGuardDismissedService launcher is busy, so ignore the hide page message deltaTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_209

    :cond_a7
    invoke-virtual {v4, v0}, Lcom/android/launcher3/OplusWorkspace;->postSetCurrentPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;)V

    goto/16 :goto_209

    :cond_ac
    const/4 v12, 0x2

    if-ne v12, v11, :cond_d7

    iget v12, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPreviousMsg:I

    if-ne v12, v9, :cond_d7

    if-eqz v8, :cond_d2

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/OplusWorkspace;->postSetCurrentPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;)V

    if-eqz v7, :cond_209

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGuardDismissedService launcher is busy, so ignore the animation message, but we ensure the launcher page\'s visibility deltaTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_209

    :cond_d2
    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->postDoKeyguardDismissedAnim()V

    goto/16 :goto_209

    :cond_d7
    const/4 v5, 0x3

    if-ne v5, v11, :cond_107

    const-string v1, "handleMessage: MSG_HIDE_FOLDER, execute delayed 30 ms approximately."

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_f6

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_f6

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :cond_f6
    new-instance v1, Lcom/android/keyguardservice/a;

    invoke-direct {v1, v0, v10}, Lcom/android/keyguardservice/a;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v2

    const-wide/16 v5, 0x3

    mul-long/2addr v2, v5

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/launcher3/OplusWorkspace;->postDelayCloseFolder(Ljava/lang/Runnable;J)V

    goto/16 :goto_209

    :cond_107
    if-ne v1, v11, :cond_18f

    const-string v1, "handleMessage --- unlock screen,pendingLock="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    invoke-static {v1, v3, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v1

    if-eqz v1, :cond_126

    const-string p0, "handleMessage --- isOverlayShown, do nothing, return!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_126
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result v1

    if-eq v1, v9, :cond_135

    const-string p0, "handleMessage unlock, launcher dismissState!=STATE_LOCK, do nothing, return!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_135
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v1, v3, :cond_14a

    const-string p0, "Launcher not in state NORMAL, ignore unlock anim"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_14a
    sget-boolean v1, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    if-nez v1, :cond_155

    const-string/jumbo p0, "mShowUnlockAnimationOnNextResume=false, ignored this unlock msg."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_155
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_16a

    const-string v5, "launcher.isStarted()="

    const-string v6, " hasBeenResumed="

    invoke-static {v5, v1, v6, v3, v2}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_16a
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-nez v1, :cond_180

    const-string p0, "handleMessage --- launcher has not started, reset to init state, return!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {v4, p0}, Lcom/android/launcher3/OplusWorkspace;->setDragLayerAlpha(F)V

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    sput-boolean v10, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    return-void

    :cond_180
    const-string v1, "handle unlock msg, do unlock anim finally"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->doUnlockAnim()V

    invoke-virtual {v0, v10}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    sput-boolean v10, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    goto/16 :goto_209

    :cond_18f
    if-ne v3, v11, :cond_1dd

    invoke-direct {p0, v10}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    const-string v1, "handleMessage --- lock screen workspace.isOverlayShown()="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v1

    if-nez v1, :cond_1c8

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isOverlayScrolling()Z

    move-result v1

    if-eqz v1, :cond_1b5

    goto :goto_1c8

    :cond_1b5
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1c4

    const-string p1, "handle MSG_LOCK_SCREEN, launcher is started, pending lock and return!"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    return-void

    :cond_1c4
    invoke-direct {p0, v0, v4}, Lcom/android/keyguardservice/KeyGuardDismissedService;->doHideDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    goto :goto_209

    :cond_1c8
    :goto_1c8
    const-string p0, "handleMessage --- isOverlayShown or isOverlayScrolling, do nothing, return! workspace.getOverlayTranslation()="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->getOverlayTranslation()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1dd
    const/16 v1, 0x66

    if-ne v1, v11, :cond_1fd

    const-string v1, "handle MSG_LAUNCHER_ON_STOP,pendingLock="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    invoke-static {v1, v3, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    if-eqz v1, :cond_209

    const-string/jumbo v1, "process pending lock msg."

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/android/keyguardservice/KeyGuardDismissedService;->doHideDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    invoke-direct {p0, v10}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    goto :goto_209

    :cond_1fd
    const/16 v0, 0x67

    if-ne v0, v11, :cond_209

    const-string v0, "handle MSG_REMOVE_PENDING_LOCK_MSG"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    :cond_209
    :goto_209
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPreviousMsg:I

    return-void

    :cond_20e
    const-string p0, "handleMessage --- launcher is null, do nothing, return!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    new-instance p1, Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
