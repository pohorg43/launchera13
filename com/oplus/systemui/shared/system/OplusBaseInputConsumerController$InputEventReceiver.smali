.class public final Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputEventReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;


# direct methods
.method public constructor <init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;->this$0:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;->this$0:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;

    invoke-virtual {v0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->updateEventTimeIfNeed(Landroid/view/InputEvent;)V

    const/4 v0, 0x1

    :try_start_6
    iget-object v1, p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;->this$0:Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;

    iget-object v1, v1, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->mListener:Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    if-eqz v1, :cond_10

    invoke-interface {v1, p1}, Lcom/android/systemui/shared/system/InputConsumerController$InputListener;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    :cond_10
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_14
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
