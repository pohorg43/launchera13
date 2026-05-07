.class public final Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_5

    move-object v0, p0

    goto :goto_7

    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    :goto_7
    const-string v1, "onSensorChanged: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceOrientationHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_15

    goto :goto_17

    :cond_15
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    :goto_17
    if-eqz p0, :cond_93

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getForceNotChangeOrientation$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_25

    goto/16 :goto_93

    :cond_25
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    const-string v0, "event.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_33

    move p0, v0

    goto :goto_34

    :cond_33
    move p0, v3

    :goto_34
    xor-int/2addr p0, v0

    if-eqz p0, :cond_93

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p0, p0, v3

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TaskView"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getActivity$p()Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-nez p1, :cond_55

    const-string p0, "onSensorChanged: launcher is null, so return"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_55
    const/4 p1, 0x4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_5c

    if-eq p0, p1, :cond_5c

    return-void

    :cond_5c
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getActivity$p()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->isScreenPhysicsHeightLessThanWidth(Landroid/content/Context;)Z

    move-result v2

    sget-object v4, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    if-eq p0, v1, :cond_74

    if-eq p0, p1, :cond_6d

    if-eqz v2, :cond_72

    goto :goto_79

    :cond_6d
    if-eqz v2, :cond_72

    const/16 v0, 0x9

    goto :goto_79

    :cond_72
    move v0, v3

    goto :goto_79

    :cond_74
    if-eqz v2, :cond_77

    goto :goto_79

    :cond_77
    const/16 v0, 0x8

    :goto_79
    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$setNewOrientation$p(I)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getActivity$p()Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-nez p0, :cond_83

    goto :goto_93

    :cond_83
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getChangeOrientationCallback$p()Ljava/lang/Runnable;

    move-result-object p0

    if-nez p0, :cond_8a

    goto :goto_93

    :cond_8a
    sget-object p0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getChangeOrientationCallback$p()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_93
    :goto_93
    return-void
.end method
