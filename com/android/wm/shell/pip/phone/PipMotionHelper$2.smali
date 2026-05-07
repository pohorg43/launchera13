.class Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipMotionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;->this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPipTransitionCanceled(I)V
    .registers 2

    return-void
.end method

.method public onPipTransitionFinished(I)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;->this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->access$000(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;->this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->access$000(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;->this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->access$002(Lcom/android/wm/shell/pip/phone/PipMotionHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_17
    return-void
.end method

.method public onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .registers 3

    return-void
.end method
