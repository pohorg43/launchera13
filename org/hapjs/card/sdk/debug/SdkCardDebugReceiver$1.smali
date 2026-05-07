.class Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_5

    goto :goto_23

    :cond_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;

    const-class p1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    monitor-enter p1

    :try_start_c
    invoke-static {}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_24

    if-nez v0, :cond_23

    iget-object p1, p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;->context:Landroid/content/Context;

    iget-object p0, p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;->intent:Landroid/content/Intent;

    invoke-static {p1, p0}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->access$100(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_23
    :goto_23
    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method
