.class public final Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

.field private static final TAG:Ljava/lang/String; = "DeviceOrientationHelper"

.field private static final TYPE_QTI_SENSOR_VICE_SCREEN:I = 0xfff001b

.field private static activity:Lcom/android/launcher3/Launcher;

.field private static changeOrientationCallback:Ljava/lang/Runnable;

.field private static final forceNotChangeOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile newOrientation:I

.field private static final registered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sensorEventListener:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static viceScreenSensor:Landroid/hardware/Sensor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->forceNotChangeOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->registered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    sput v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->newOrientation:I

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->sensorEventListener:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->registerSensorListener$lambda-2()V

    return-void
.end method

.method public static final synthetic access$getActivity$p()Lcom/android/launcher3/Launcher;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->activity:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static final synthetic access$getChangeOrientationCallback$p()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->changeOrientationCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getForceNotChangeOrientation$p()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->forceNotChangeOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$setNewOrientation$p(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->newOrientation:I

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->unregisterSensorListener$lambda-4()V

    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->init$lambda-0()V

    return-void
.end method

.method private final clearAllChangeOrientationCallbacks()V
    .registers 3

    const-string p0, "TaskView"

    const-string v0, "DeviceOrientationHelper"

    const-string v1, "clearAllChangeOrientationCallbacks"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->changeOrientationCallback:Ljava/lang/Runnable;

    if-nez p0, :cond_e

    goto :goto_17

    :cond_e
    sget-object v0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_17
    return-void
.end method

.method private static final init$lambda-0()V
    .registers 3

    sget v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->newOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSensorChanged: change orientation to "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "DeviceOrientationHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->forceNotChangeOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_2d

    :cond_22
    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->activity:Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_27

    goto :goto_2c

    :cond_27
    sget v1, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->newOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_2c
    return-void

    :cond_2d
    :goto_2d
    const-string v0, "we don\'t change orientation, when forceNotChangeOrientation is true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final registerSensorListener$lambda-2()V
    .registers 6

    const-string v0, "registerSensorListener-execute: viceScreenSensor = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->viceScreenSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->registered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TaskView"

    const-string v3, "DeviceOrientationHelper"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->viceScreenSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4d

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_4d

    :cond_2f
    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_34

    goto :goto_4d

    :cond_34
    sget-object v2, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->sensorEventListener:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;

    sget-object v4, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->viceScreenSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "registerSensorListener: register listener "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method private final setNotChangeOrientation(Z)V
    .registers 4

    const-string p0, "setNotChangeOrientation: notChange = "

    const-string v0, "TaskView"

    const-string v1, "DeviceOrientationHelper"

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->forceNotChangeOrientation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final unregisterSensorListener$lambda-4()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->registered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "unregisterSensorListener-execute: registered = "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskView"

    const-string v3, "DeviceOrientationHelper"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1e

    return-void

    :cond_1e
    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_23

    goto :goto_28

    :cond_23
    sget-object v2, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->sensorEventListener:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final init(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->activity:Lcom/android/launcher3/Launcher;

    const-class p0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_1d

    :cond_15
    const p1, 0xfff001b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p0

    :goto_1d
    sput-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->viceScreenSensor:Landroid/hardware/Sensor;

    sget-object p0, Lcom/android/common/util/a;->i:Lcom/android/common/util/a;

    sput-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->changeOrientationCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final registerSensorListener()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->registered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "registerSensorListener: registered = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "DeviceOrientationHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->setNotChangeOrientation(Z)V

    sget-object p0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    sget-object v0, Lcom/android/common/util/f0;->h:Lcom/android/common/util/f0;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final release()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "DeviceOrientationHelper"

    const-string v2, "release()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->unregisterSensorListener()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->clearAllChangeOrientationCallbacks()V

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->changeOrientationCallback:Ljava/lang/Runnable;

    sput-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->activity:Lcom/android/launcher3/Launcher;

    sput-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    sput-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->viceScreenSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public final unregisterSensorListener()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->registered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "unregisterSensorListener: registered = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "DeviceOrientationHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->setNotChangeOrientation(Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->clearAllChangeOrientationCallbacks()V

    sget-object p0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    sget-object v0, Lcom/android/launcher/c0;->g:Lcom/android/launcher/c0;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
