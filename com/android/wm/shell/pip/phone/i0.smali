.class public final synthetic Lcom/android/wm/shell/pip/phone/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/pip/phone/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/i0;->b:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/phone/i0;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/i0;->b:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->e(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Landroid/provider/DeviceConfig$Properties;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/i0;->b:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->d(Lcom/android/wm/shell/pip/phone/PipTouchHandler;Landroid/provider/DeviceConfig$Properties;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
