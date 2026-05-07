.class public final synthetic Lcom/oplus/channel/server/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;[BI)V
    .registers 4

    iput p3, p0, Lcom/oplus/channel/server/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/a;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/oplus/channel/server/a;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/channel/server/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/channel/server/a;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/oplus/channel/server/a;->c:[B

    invoke-static {v0, p0}, Lcom/oplus/channel/server/ClientProxyImpl;->e(Lkotlin/jvm/functions/Function1;[B)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/oplus/channel/server/a;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/oplus/channel/server/a;->c:[B

    invoke-static {v0, p0}, Lcom/oplus/channel/server/ClientProxyImpl;->d(Lkotlin/jvm/functions/Function1;[B)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
