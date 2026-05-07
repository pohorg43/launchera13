.class public final Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/oplus/quickstep/gesture/OplusGestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeFailed(Landroid/view/MotionEvent;Z)V
    .registers 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwipeFailed event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finishAnimBeforeInject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusOtherActivityInputConsumer"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;

    invoke-static {v0, p2}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->access$setFinishRecentsAnimImmediately$p(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;Z)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;

    invoke-static {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->access$superMotionEvent(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;Landroid/view/MotionEvent;)V

    return-void
.end method
