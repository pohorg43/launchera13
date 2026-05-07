.class public final Lcom/oplus/quickstep/bracketspace/BracketModeHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DELAY_TIME:J = 0x1f4L

.field private static final DEVICE_STATE_DEFAULT:I = -0x1

.field public static final INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

.field private static final STATE_CLOSE:I = 0x0

.field private static final STATE_HALF_OPENED:I = 0x2

.field private static final SYSTEM_FOLDING_ANGLE_MAX:I = 0x96

.field private static final SYSTEM_FOLDING_ANGLE_MIN:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "BracketModeHelper"

.field private static activity:Lcom/android/launcher/Launcher;

.field private static angleRunnable:Ljava/lang/Runnable;

.field private static bracketSpaceStartCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private static bracketSpaceStopCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private static lastAngle:I

.field private static lastDeviceState:I

.field private static final systemDeviceStateObserver:Lcom/oplus/quickstep/common/IObserverListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    const/4 v0, -0x1

    sput v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->lastDeviceState:I

    new-instance v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper$systemDeviceStateObserver$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper$systemDeviceStateObserver$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->systemDeviceStateObserver:Lcom/oplus/quickstep/common/IObserverListener;

    sget-object v0, Lcom/android/common/util/j0;->i:Lcom/android/common/util/j0;

    sput-object v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->angleRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->angleRunnable$lambda-0()V

    return-void
.end method

.method public static final synthetic access$checkIfNeedStartBracketSpace(Lcom/oplus/quickstep/bracketspace/BracketModeHelper;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->checkIfNeedStartBracketSpace()Z

    move-result p0

    return p0
.end method

.method private static final angleRunnable$lambda-0()V
    .registers 6

    sget-object v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->getCurrentAngle()I

    move-result v1

    const-string v2, "angleRunnable running lastAngle: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->lastAngle:I

    const-string v4, " currentAngle: "

    const-string v5, "BracketModeHelper"

    invoke-static {v2, v3, v4, v1, v5}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->isAroundBracketAngel(I)Z

    move-result v2

    if-eqz v2, :cond_24

    sget v2, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->lastAngle:I

    if-eq v2, v1, :cond_20

    goto :goto_24

    :cond_20
    invoke-direct {v0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->startBracketSpaceIfNeed()V

    goto :goto_27

    :cond_24
    :goto_24
    invoke-direct {v0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->judgeAngleChangeFinished()V

    :goto_27
    return-void
.end method

.method private final checkIfNeedStartBracketSpace()Z
    .registers 9

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->getSystemDeviceState()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v3}, Lcom/oplus/quickstep/navigation/NavigationController;->isBracketSpaceSwitchOpen()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_36

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isInBracketSpaceMode()Z

    move-result p0

    if-eqz p0, :cond_36

    move p0, v4

    goto :goto_37

    :cond_36
    move p0, v5

    :goto_37
    sget v3, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->lastDeviceState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3f

    if-ne v0, v6, :cond_3f

    goto :goto_40

    :cond_3f
    move v4, v5

    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfNeedStartBracketSpace: deviceState = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isBracketSpaceEnabled = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isDeviceStateEnabled = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isResumed = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->activity:Lcom/android/launcher/Launcher;

    if-nez v7, :cond_68

    const/4 v7, 0x0

    goto :goto_70

    :cond_68
    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_70
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", currentUserId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", systemUserId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "BracketModeHelper"

    invoke-static {v3, v2, v7}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v3, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->activity:Lcom/android/launcher/Launcher;

    if-nez v3, :cond_8a

    goto :goto_a7

    :cond_8a
    if-eqz v4, :cond_a7

    if-eqz p0, :cond_a7

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result p0

    if-nez p0, :cond_a7

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object p0

    if-eqz p0, :cond_a7

    if-ne v1, v2, :cond_a7

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskViewRemoteAnimation()Z

    move-result p0

    if-eqz p0, :cond_a7

    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    invoke-direct {p0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->judgeAngleChangeFinished()V

    :cond_a7
    :goto_a7
    if-eq v0, v6, :cond_c1

    const-string p0, "checkIfNeedStartBracketSpace: the device isn\'t in half open, so remove the callbacks and stop bracket-space"

    invoke-static {v7, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->angleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->bracketSpaceStopCallback:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_be

    goto :goto_c1

    :cond_be
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_c1
    :goto_c1
    sput v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->lastDeviceState:I

    return v5
.end method

.method private final getCurrentAngle()I
    .registers 4

    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->activity:Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    goto :goto_e

    :cond_6
    sget-object v1, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    const-string v2, "system_folding_angle_for_oplus"

    invoke-virtual {v1, p0, v2, v0}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_e
    return v0
.end method

.method private final isAroundBracketAngel(I)Z
    .registers 3

    const/4 p0, 0x0

    const/16 v0, 0x2d

    if-gt v0, p1, :cond_a

    const/16 v0, 0x96

    if-gt p1, v0, :cond_a

    const/4 p0, 0x1

    :cond_a
    return p0
.end method

.method private final judgeAngleChangeFinished()V
    .registers 4

    const-string v0, "BracketModeHelper"

    const-string v1, "judgeAngleChangeFinished()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->getCurrentAngle()I

    move-result p0

    sput p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->lastAngle:I

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->angleRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final startBracketSpaceIfNeed()V
    .registers 3

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isDeviceInHalfOn()Z

    move-result p0

    const-string v0, "startBracketSpaceIfNeed: isDeviceHalfOn="

    const-string v1, ", isResumed = "

    invoke-static {v0, p0, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->activity:Lcom/android/launcher/Launcher;

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_22

    :cond_1a
    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BracketModeHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_49

    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->activity:Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_37

    goto :goto_3e

    :cond_37
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-ne p0, v1, :cond_3e

    move v0, v1

    :cond_3e
    :goto_3e
    if-eqz v0, :cond_49

    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->bracketSpaceStartCallback:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_45

    goto :goto_51

    :cond_45
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_51

    :cond_49
    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->bracketSpaceStopCallback:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_4e

    goto :goto_51

    :cond_4e
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_51
    return-void
.end method


# virtual methods
.method public final canEnterBracketSpace()Z
    .registers 5

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isBracketSpaceSwitchOpen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isInBracketSpaceMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->getSystemDeviceState()I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_2f

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1
.end method

.method public final getAngleRunnable()Ljava/lang/Runnable;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->angleRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final init(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "BracketModeHelper"

    const-string v0, "init()"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->activity:Lcom/android/launcher/Launcher;

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    sget-object p1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->systemDeviceStateObserver:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController;->addOplusSystemDeviceStateChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public final release()V
    .registers 2

    const-string p0, "BracketModeHelper"

    const-string v0, "release()"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->bracketSpaceStartCallback:Lkotlin/jvm/functions/Function0;

    sput-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->bracketSpaceStopCallback:Lkotlin/jvm/functions/Function0;

    sput-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->activity:Lcom/android/launcher/Launcher;

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    sget-object v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->systemDeviceStateObserver:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/navigation/NavigationController;->removeOplusSystemDeviceStateChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method

.method public final setAngleRunnable(Ljava/lang/Runnable;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->angleRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setBracketStartCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->bracketSpaceStartCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setBracketStopCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->bracketSpaceStopCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method
