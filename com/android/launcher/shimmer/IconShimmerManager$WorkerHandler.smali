.class Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/shimmer/IconShimmerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkerHandler"
.end annotation


# instance fields
.field private final manager:Lcom/android/launcher/shimmer/IconShimmerManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/launcher/shimmer/IconShimmerManager;)V
    .registers 3
    .param p2  # Lcom/android/launcher/shimmer/IconShimmerManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_4d

    :pswitch_6  #0xc
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$1200(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_c  #0xb
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$1100(Lcom/android/launcher/shimmer/IconShimmerManager;)V

    goto :goto_4d

    :pswitch_12  #0xa
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$1000(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_18  #0x9
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$900(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_1e  #0x8
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$800(Lcom/android/launcher/shimmer/IconShimmerManager;)V

    goto :goto_4d

    :pswitch_24  #0x7
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$700(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_2a  #0x6
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$600(Lcom/android/launcher/shimmer/IconShimmerManager;)V

    goto :goto_4d

    :pswitch_30  #0x5
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$500(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_36  #0x4
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$400(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_3c  #0x3
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$300(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_42  #0x2
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$200(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V

    goto :goto_4d

    :pswitch_48  #0x1
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;->manager:Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-static {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->access$100(Lcom/android/launcher/shimmer/IconShimmerManager;)V

    :goto_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_42  #00000002
        :pswitch_3c  #00000003
        :pswitch_36  #00000004
        :pswitch_30  #00000005
        :pswitch_2a  #00000006
        :pswitch_24  #00000007
        :pswitch_1e  #00000008
        :pswitch_18  #00000009
        :pswitch_12  #0000000a
        :pswitch_c  #0000000b
        :pswitch_6  #0000000c
    .end packed-switch
.end method
