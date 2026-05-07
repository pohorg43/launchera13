.class public final Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final gestureState:Lcom/android/quickstep/GestureState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->gestureState:Lcom/android/quickstep/GestureState;

    return-void
.end method


# virtual methods
.method public createRecentsIntent()Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->context:Landroid/content/Context;

    const-string v3, "LockScreenRecentsActivity."

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->gestureState:Lcom/android/quickstep/GestureState;

    if-nez p0, :cond_20

    const/4 p0, 0x0

    goto :goto_28

    :cond_20
    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_28
    const-string v1, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    const-string v0, "Intent(Intent.ACTION_MAI…ON_RECENTS)\n            }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getGestureState()Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->gestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method
