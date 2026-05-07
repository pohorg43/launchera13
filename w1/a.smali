.class public final synthetic Lw1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/card/helper/StartCardActivityHelper;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 6

    iput p4, p0, Lw1/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/a;->b:Lcom/oplus/card/helper/StartCardActivityHelper;

    iput-object p2, p0, Lw1/a;->c:Landroid/content/Intent;

    iput-object p3, p0, Lw1/a;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lw1/a;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lw1/a;->b:Lcom/oplus/card/helper/StartCardActivityHelper;

    iget-object v1, p0, Lw1/a;->c:Landroid/content/Intent;

    iget-object p0, p0, Lw1/a;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->c(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lw1/a;->b:Lcom/oplus/card/helper/StartCardActivityHelper;

    iget-object v1, p0, Lw1/a;->c:Landroid/content/Intent;

    iget-object p0, p0, Lw1/a;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->a(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lw1/a;->b:Lcom/oplus/card/helper/StartCardActivityHelper;

    iget-object v1, p0, Lw1/a;->c:Landroid/content/Intent;

    iget-object p0, p0, Lw1/a;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->b(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
