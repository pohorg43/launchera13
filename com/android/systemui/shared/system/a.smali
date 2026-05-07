.class public final synthetic Lcom/android/systemui/shared/system/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IRemoteTransitionFinishedCallback;I)V
    .registers 4

    iput p2, p0, Lcom/android/systemui/shared/system/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/shared/system/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/systemui/shared/system/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->a(Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->d(Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/systemui/shared/system/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->a(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
