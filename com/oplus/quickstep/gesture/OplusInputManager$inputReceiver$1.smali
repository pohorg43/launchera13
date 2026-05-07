.class public final Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;
.super Landroid/os/IOplusExInputCallBack$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusInputManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusInputManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;->this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-direct {p0}, Landroid/os/IOplusExInputCallBack$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/gesture/OplusInputManager;Landroid/view/InputEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;->onInputEvent$lambda-0(Lcom/oplus/quickstep/gesture/OplusInputManager;Landroid/view/InputEvent;)V

    return-void
.end method

.method private static final onInputEvent$lambda-0(Lcom/oplus/quickstep/gesture/OplusInputManager;Landroid/view/InputEvent;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->access$getHasRegistered$p(Lcom/oplus/quickstep/gesture/OplusInputManager;)Z

    move-result v0

    if-nez v0, :cond_21

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_21

    const-string p0, "OplusInputManager"

    const-string p1, "onInputEvent -> receiver are unregistered, so we don\'t consume down event"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->getConsumer()Ljava/util/function/Consumer;

    move-result-object p0

    if-nez p0, :cond_28

    goto :goto_2b

    :cond_28
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2b
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "inputEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/view/MotionEvent;

    const-string v1, "OplusInputManager"

    if-nez v0, :cond_15

    const-string p0, "Unknown event "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;->this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->access$isValidTouchEvent$p(Lcom/oplus/quickstep/gesture/OplusInputManager;)Z

    move-result v0

    const-string v2, "QuickStep"

    if-nez v0, :cond_34

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "onInputEvent -> drop invalid event"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-void

    :cond_34
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1$onInputEvent$1;

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;->this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-direct {v4, v5}, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1$onInputEvent$1;-><init>(Lcom/oplus/quickstep/gesture/OplusInputManager;)V

    invoke-virtual {v0, v3, v4}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptInjectEvent(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_57

    const-string p0, "onInputEvent -> drop the event, because it\'s an injected event"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    return-void

    :cond_58
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "onInputEvent -> ACTION_DOWN, rawX = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,rawY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;->this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->access$getMainHandler$p(Lcom/oplus/quickstep/gesture/OplusInputManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;->this$0:Lcom/oplus/quickstep/gesture/OplusInputManager;

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/quickstep/gesture/OplusInputManager;Landroid/view/InputEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
