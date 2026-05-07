.class public final synthetic Lcom/android/quickstep/util/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/CancellableTask;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/util/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/util/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/VibratorWrapper;Landroid/os/VibrationEffect;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/util/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/util/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/util/b;->a:I

    packed-switch v0, :pswitch_data_4c

    goto :goto_40

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntConsumer;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->c(Ljava/util/function/IntConsumer;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;)V

    return-void

    :pswitch_12  #0x3
    iget-object v0, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/CancellableTask;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/CancellableTask;->a(Lcom/android/quickstep/util/CancellableTask;Ljava/lang/Object;)V

    return-void

    :pswitch_1c  #0x2
    iget-object v0, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->a(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Ljava/lang/Runnable;)V

    return-void

    :pswitch_28  #0x1
    iget-object v0, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->a(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;Ljava/lang/Runnable;)V

    return-void

    :pswitch_34  #0x0
    iget-object v0, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/AssistContentRequester$Callback;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/assist/AssistContent;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->a(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V

    return-void

    :goto_40
    iget-object v0, p0, Lcom/android/quickstep/util/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/VibratorWrapper;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/VibrationEffect;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/VibratorWrapper;->a(Lcom/android/quickstep/util/VibratorWrapper;Landroid/os/VibrationEffect;)V

    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_28  #00000001
        :pswitch_1c  #00000002
        :pswitch_12  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
