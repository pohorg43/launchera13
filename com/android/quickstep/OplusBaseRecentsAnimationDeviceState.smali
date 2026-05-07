.class public Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$Companion;

.field public static final TAG:Ljava/lang/String; = "OplusBaseRecentsAnimationDeviceState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public displayRotation:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mAssistantAvailable:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mDisplayController:Lcom/android/launcher3/util/DisplayController;

.field public mIsUserUnlocked:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

.field public mSystemUiStateFlags:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->Companion:Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    new-instance v1, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState$1;-><init>(Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->setTouchBoundsChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$TouchBoundsChangeListener;)V

    return-void
.end method

.method public static synthetic getMSystemUiStateFlags$annotations()V
    .registers 0

    return-void
.end method

.method private final isKeyguardShowing()Z
    .registers 1

    iget p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private final oplusTransformer()Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p0, Lcom/android/quickstep/OplusRotationTouchHelperImpl;

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    if-nez p0, :cond_11

    move-object p0, v1

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/android/quickstep/OplusRotationTouchHelperImpl;->getTransformer()Lcom/android/quickstep/OrientationTouchTransformer;

    move-result-object p0

    :goto_15
    instance-of v0, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    if-eqz v0, :cond_1c

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    :cond_1c
    return-object v1
.end method


# virtual methods
.method public canStartSystemGesture()Z
    .registers 12

    iget v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    const/high16 v4, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/RotationTouchHelper;->isTaskListFrozen()Z

    move-result v4

    sget-object v5, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v6}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v6

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v7}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGestureWithKeysModeSideBack()Z

    move-result v7

    sget-object v8, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v8}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v5}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureMistouchPreventionActive()Z

    move-result v5

    if-nez v5, :cond_4b

    move v5, v2

    goto :goto_4c

    :cond_4b
    move v5, v3

    :goto_4c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_7e

    const-string v8, "canStartSystemGesture: navbarNotHidden = "

    const-string v9, ", ignoreBarVisibility = "

    const-string v10, ", isTaskListFrozen = "

    invoke-static {v8, v1, v9, v0, v10}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isGestureNavbarHidden = "

    const-string v10, ", isGestureBackHomeBack = "

    invoke-static {v8, v4, v9, v6, v10}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v9, ", isGameMistouchPreventionDisabled = "

    const-string v10, ", mSystemUiStateFlags = "

    invoke-static {v8, v7, v9, v5, v10}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget v9, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mSystemUiStateFlags:I

    invoke-static {v9}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "QuickStep"

    const-string v10, "OplusBaseRecentsAnimationDeviceState"

    invoke-static {v9, v10, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    if-nez v1, :cond_8d

    if-nez v0, :cond_8d

    if-nez v4, :cond_8d

    if-nez v6, :cond_8d

    if-nez v7, :cond_8d

    if-eqz v5, :cond_8b

    goto :goto_8d

    :cond_8b
    move v0, v3

    goto :goto_8e

    :cond_8d
    :goto_8d
    move v0, v2

    :goto_8e
    if-eqz v0, :cond_a3

    iget p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_a3

    and-int/lit16 v0, p0, 0x800

    if-nez v0, :cond_a3

    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_a4

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v3

    :cond_a4
    :goto_a4
    return v2
.end method

.method public final canStartWithNavHidden()Z
    .registers 7

    iget v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    const/high16 v4, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->isTaskListFrozen()Z

    move-result p0

    sget-object v4, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v5}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v5

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v4}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGestureWithKeysModeSideBack()Z

    move-result v4

    if-nez v1, :cond_3d

    if-nez v0, :cond_3d

    if-nez p0, :cond_3d

    if-nez v5, :cond_3d

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    :cond_3d
    :goto_3d
    return v2
.end method

.method public final canTriggerAssistant(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 3

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isGestureBlockedActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMDisplayController()Lcom/android/launcher3/util/DisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    const-string p1, "canTriggerOneHandedAction: touchInRegion = "

    const-string v1, ", rotation = "

    invoke-static {p1, p0, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseRecentsAnimationDeviceState"

    invoke-static {p1, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p0, :cond_2c

    iget p0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eq p0, p1, :cond_2c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    return p1
.end method

.method public final getMDisplayController()Lcom/android/launcher3/util/DisplayController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mDisplayController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mRotationTouchHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAssistantActionValid(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mAssistantAvailable:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mSystemUiStateFlags:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->touchInAssistantRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public isButtonNavMode()Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS_GESTURE:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isGestureBlockedActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isHomeDisabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isInDeviceLandspace()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->oplusTransformer()Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    goto :goto_10

    :cond_9
    invoke-virtual {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->isInLandspace()Z

    move-result p0

    if-ne p0, v1, :cond_10

    move v0, v1

    :cond_10
    :goto_10
    return v0
.end method

.method public final isKeyguardShowing(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isNavbarHidden()Z
    .registers 1

    iget p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isOnKeyguardDisableHomeOverView()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isHomeDisabled()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isOverviewDisabled()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isOverviewDisabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyUserUnlocked()V
    .registers 1

    return-void
.end method

.method public final onDestory()V
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->releaseTouchBoundChangeListener()V

    return-void
.end method

.method public final reset()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsAnimationDeviceState"

    const-string v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->oplusTransformer()Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->resetLastTouchRect()V

    :goto_13
    return-void
.end method

.method public final resetActiveRotation()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->oplusTransformer()Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->resetActiveRotation()V

    :goto_a
    return-void
.end method

.method public final resetSwipeRegionsForce()V
    .registers 3

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->oplusTransformer()Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_17

    :cond_7
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMDisplayController()Lcom/android/launcher3/util/DisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    const-string v1, "mDisplayController.info"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->resetSwipeRegionsForce(Lcom/android/launcher3/util/DisplayController$Info;)V

    :goto_17
    return-void
.end method

.method public final resetSwipeRegionsNeeded()V
    .registers 3

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->oplusTransformer()Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_17

    :cond_7
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->getMDisplayController()Lcom/android/launcher3/util/DisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    const-string v1, "mDisplayController.info"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->resetSwipeRegionNeeded(Lcom/android/launcher3/util/DisplayController$Info;)V

    :goto_17
    return-void
.end method

.method public final setMDisplayController(Lcom/android/launcher3/util/DisplayController;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    return-void
.end method

.method public final setMRotationTouchHelper(Lcom/android/quickstep/RotationTouchHelper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    return-void
.end method

.method public setUserUnlocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->mIsUserUnlocked:Z

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->notifyUserUnlocked()V

    return-void
.end method
