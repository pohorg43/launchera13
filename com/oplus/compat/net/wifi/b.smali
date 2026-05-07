.class public final synthetic Lcom/oplus/compat/net/wifi/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/compat/net/wifi/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/b;->b:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/oplus/compat/net/wifi/b;->a:I

    packed-switch v0, :pswitch_data_12

    :pswitch_5  #0x0, 0x1
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/b;->b:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onFailure(I)V

    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
    .end packed-switch
.end method
