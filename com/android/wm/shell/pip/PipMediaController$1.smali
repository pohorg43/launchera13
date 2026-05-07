.class Lcom/android/wm/shell/pip/PipMediaController$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipMediaController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipMediaController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p1

    if-eqz p1, :cond_8c

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    if-nez p1, :cond_16

    goto/16 :goto_8c

    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_8e

    goto :goto_51

    :sswitch_26
    const-string v0, "com.android.wm.shell.pip.PAUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_51

    :cond_2f
    const/4 p2, 0x3

    goto :goto_51

    :sswitch_31
    const-string v0, "com.android.wm.shell.pip.PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_51

    :cond_3a
    const/4 p2, 0x2

    goto :goto_51

    :sswitch_3c
    const-string v0, "com.android.wm.shell.pip.PLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_51

    :cond_45
    const/4 p2, 0x1

    goto :goto_51

    :sswitch_47
    const-string v0, "com.android.wm.shell.pip.NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_51

    :cond_50
    const/4 p2, 0x0

    :goto_51
    packed-switch p2, :pswitch_data_a0

    goto :goto_8c

    :pswitch_55  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_8c

    :pswitch_63  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    goto :goto_8c

    :pswitch_71  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_8c

    :pswitch_7f  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_8c
    :goto_8c
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        0x2681914 -> :sswitch_47
        0x2691955 -> :sswitch_3c
        0x2693054 -> :sswitch_31
        0x4ab55bd5 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7f  #00000000
        :pswitch_71  #00000001
        :pswitch_63  #00000002
        :pswitch_55  #00000003
    .end packed-switch
.end method
