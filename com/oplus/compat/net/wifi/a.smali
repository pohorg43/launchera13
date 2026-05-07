.class public final synthetic Lcom/oplus/compat/net/wifi/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/compat/net/wifi/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/a;->b:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/compat/net/wifi/a;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0, 0x1
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/a;->b:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {p0}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onSuccess()V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
    .end packed-switch
.end method
