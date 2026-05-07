.class public final synthetic Lcom/android/quickstep/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/v0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v0;->b:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/v0;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/quickstep/v0;->b:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->h(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/quickstep/v0;->b:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->f(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/quickstep/v0;->b:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->k(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
