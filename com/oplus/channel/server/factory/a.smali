.class public final synthetic Lcom/oplus/channel/server/factory/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/channel/server/factory/AlwaysPuller;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/channel/server/factory/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/a;->b:Lcom/oplus/channel/server/factory/AlwaysPuller;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/channel/server/factory/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/channel/server/factory/a;->b:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->a(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/oplus/channel/server/factory/a;->b:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->a(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
