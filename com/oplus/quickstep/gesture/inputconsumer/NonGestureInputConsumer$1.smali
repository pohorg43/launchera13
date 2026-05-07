.class public final Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$1;->this$0:Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionPauseChanged(Z)V
    .registers 3

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$1;->this$0:Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->access$setMGoingToOverview$p(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$1;->this$0:Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->access$getMMotionPauseDetector$p(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;)Lcom/android/quickstep/util/MotionPauseDetector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$1;->this$0:Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->access$getMSwipeAction$p(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public onMotionPauseDetected()V
    .registers 1

    return-void
.end method
